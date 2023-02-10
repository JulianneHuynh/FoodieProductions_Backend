class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :prep_time, :cook_time, :yield, :ingredients, :instructions
end
