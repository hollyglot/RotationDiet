class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :food_item
      t.string :picture
      t.integer :food_family_id

      t.timestamps
    end
  end
end
