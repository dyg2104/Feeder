class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :title, unique: true, null: false
      t.string :url, unique: true, null: false
      t.string :image_url
      t.integer :category_id, null: false

      t.timestamps
    end
    
    add_index :feeds, :title, unique: true
    add_index :feeds, :url, unique: true
  end
end
