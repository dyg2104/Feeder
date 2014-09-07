class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :author
      t.string :guid, unique: true, null: false
      t.string :link
      t.string :image_url
      t.text :description
      t.datetime :published_at, null: false
      t.integer :feed_id, null: false
      t.string :feed_title
      t.integer :category_id, null: false

      t.timestamps
    end
    
    add_index :articles, :title
    add_index :articles, :author
    add_index :articles, :guid, unique: true
    add_index :articles, :feed_id
    add_index :articles, :category_id
  end
end
