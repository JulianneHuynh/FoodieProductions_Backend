class UserCookbooksSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :cookbooks

end
