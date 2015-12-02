class Ingredient < ActiveRecord::Base
  has_many :recipeings
  has_many :recipes, :through => :recipeings
	
end
