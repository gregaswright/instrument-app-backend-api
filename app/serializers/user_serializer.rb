class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :wallet
end
