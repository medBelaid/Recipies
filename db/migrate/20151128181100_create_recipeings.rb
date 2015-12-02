class CreateRecipeings < ActiveRecord::Migration
  def change
    create_table :recipeings do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.integer :position

      t.timestamps null: false
    end
  end
end
