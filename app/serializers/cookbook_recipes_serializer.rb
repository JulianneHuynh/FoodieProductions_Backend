class CookbookRecipesSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :prep_time, :cook_time, :yield, :ingredients, :ingredients
  has_many :recipes 
end
