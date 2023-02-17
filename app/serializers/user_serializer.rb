class UserSerializer < ActiveModel::Serializer
  attributes :id, :image, :first_name, :last_name, :email, :password_digest
end
