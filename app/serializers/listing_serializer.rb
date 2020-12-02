class ListingSerializer < ActiveModel::Serializer
  attributes :id, :brand, :instrument_type, :history, :weight, :age, :used, :price, :img, :user_id, :in_cart
  belongs_to :user
end
