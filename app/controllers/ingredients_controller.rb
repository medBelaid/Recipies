class IngredientsController < ApplicationController
	
   def index
    if params.has_key?(:recipe_id) 
      ingredientsByRecipe =[]
      @recipeing = Recipeing.where(recipe_id: params[:recipe_id])
      @recipeing.each do |ri|
        ingredientsByRecipe << Ingredient.find(ri.ingredient_id)
      end
      render json: ingredientsByRecipe
    else  
      render json: Ingredient.all 	
    end   
   end

   def create
      recipeing = Recipeing.new()
      ingredient = Ingredient.create!(ingredient_params)
      recipeing.recipe_id = params[:recipe_id]
      recipeing.ingredient_id = ingredient.id
      recipeing.position = 1
      recipeing.save(recipeing)
   end

   def update
   
   end

   def destroy
    @recipeing = Recipeing.where(recipe_id: params[:recipe_id]).where(ingredient_id: params[:id])
    @recipeing.destroy_all
   end

   def ingredient_params
   params.require(:ingredient).permit(:name)
   end


end
