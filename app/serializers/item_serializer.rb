class ItemSerializer < ActiveModel::Serializer
    attributes :id, :cart_id, :listing_id
    belongs_to :listing
  
  end