class CreateSavedForLaters < ActiveRecord::Migration
  def change
    create_table :saved_for_laters do |t|
      t.integer :user_id, null: false
      t.integer :article_id, null: false

      t.timestamps
    end
    
    add_index :saved_for_laters, :user_id
    add_index :saved_for_laters, :article_id
  end
end
