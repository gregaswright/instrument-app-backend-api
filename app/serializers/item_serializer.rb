class ItemSerializer < ActiveModel::Serializer
    attributes :cart_id, :listing_id
    belongs_to :listing
  end