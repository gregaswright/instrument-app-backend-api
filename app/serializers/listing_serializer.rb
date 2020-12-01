class ListingSerializer < ActiveModel::Serializer
  attributes :id, :brand, :instrument_type, :history, :weight, :age, :used, :price, :img, :user_id
  belongs_to :user
end
