class CreateFoodItems < ActiveRecord::Migration[5.2]
  def change
    create_table :food_items do |t|
      t.string :food_item
      t.float :price
      t.references :shopping_list, foreign_key: true

      t.timestamps
    end
  end
end
