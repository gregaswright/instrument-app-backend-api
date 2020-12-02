class CartSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :history
    belongs_to :user
    has_many :items
  end