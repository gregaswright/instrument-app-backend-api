class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :wallet
  has_many :carts
end
