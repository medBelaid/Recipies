class Recipe < ActiveRecord::Base
	acts_as_votable
	has_many :recipeings
	has_many :ingredients, :through => :recipeings
	accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
	belongs_to :user
	accepts_nested_attributes_for :user
	mount_uploader :image, ImageUploader
end
