class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title, unique: true, null: false
      t.string :image_url

      t.timestamps
    end
    
    add_index :categories, :title, unique: true
  end
end
