class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :image
      t.string :color
      t.string :brand
      t.integer :user_id
      t.integer :category_id
      
      t.timestamps
    end
  end
end
