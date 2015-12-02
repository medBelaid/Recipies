class CreateRecipesIngredientsJoin < ActiveRecord::Migration
  def change
    create_table :recipes_ingredients do |t|
    	t.integer :recipes_id
        t.integer :ingredients_id
    end
  end
end
