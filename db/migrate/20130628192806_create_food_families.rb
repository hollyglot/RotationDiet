class CreateFoodFamilies < ActiveRecord::Migration
  def change
    create_table :food_families do |t|
      t.string :food_family
      t.integer :food_group_id

      t.timestamps
    end
  end
end
