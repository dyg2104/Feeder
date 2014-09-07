require 'open-uri'

class Feed < ActiveRecord::Base
  include PgSearch
  
  validates :title, :url, :category_id, presence: true
  validates :title, :url, uniqueness: true
  
  default_scope { order(id: :asc) }
  
  belongs_to :category
  
  has_many :articles
  has_many :user_feeds
  has_many :users, through: :user_feeds, source: :user
  
  pg_search_scope :search_by_query,
                  :against => {
                    :title => 'A',
                    :url => 'C'
                  },
                  :associated_against => {
                    :category => [
                      [:title]
                    ],
                    :articles => [
                      [:title, :author, [:description, 'B']]
                    ]
                  },
                  :using => {
                    :tsearch => {:prefix => true}
                  }

  def self.create_feed(title, url, category_id)
    p title # Comment for debugging purposes
    p url # Comment for debugging purposes
    begin
      feed_hash = SimpleRSS.parse(open(url))
      feed = Feed.create!(title: title, url: url, category_id: category_id)

      feed_hash.items.each do |item_hash|

        begin
          item_hash.each do |k, v|
            cleaned = Feed.clean_rss(item_hash[k])
            item_hash[k] = cleaned
          end

          Article.create_from_json!(item_hash, feed)
        rescue
          next
        end
      end

    rescue SimpleRSSError
      return nil
    end

    feed
  end

  def self.clean_rss(str)
    str.class == String ? Feed.base64_to_utf(str) : str
  end

  def self.base64_to_utf(str)
    str.force_encoding('UTF-8')
    str
  end

  def update_feed
    begin
      feed_hash = SimpleRSS.parse(open(self.url))

      existing_art_guids = Article.pluck(:guid).sort
      
      feed_hash.items.each do |item_hash|
        
        begin
          cleaned_guid = Feed.clean_rss(item_hash[:guid])
          cleaned_link = Feed.clean_rss(item_hash[:link])

          next if (existing_art_guids.include?(cleaned_guid) ||
                   existing_art_guids.include?(cleaned_link))

          item_hash.each do |k, v|
            cleaned = Feed.clean_rss(item_hash[k])
            item_hash[k] = cleaned
          end

        article = Article.create_from_json!(item_hash, self)
        rescue
          next
        end
      end

      self
    rescue SimpleRSSError
      return false
    end
  end
end
