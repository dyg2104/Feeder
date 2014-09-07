class CreateReadArticles < ActiveRecord::Migration
  def change
    create_table :read_articles do |t|
      t.integer :user_id, null: false
      t.integer :article_id, null: false
      t.boolean :read_status, default: false

      t.timestamps
    end
    
    add_index :read_articles, :article_id
    add_index :read_articles, :user_id
  end
end
