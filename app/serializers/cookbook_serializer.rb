class CookbookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :cover_image
  has_one :user
  has_one :recipe
  has_one :opening_note
end
