class RecipeBoxSerializer < ActiveModel::Serializer
  attributes :id, :title, :author
  has_one :user
  has_one :recipe
  has_one :opening_note
end
