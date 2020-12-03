class Listing < ApplicationRecord
    belongs_to :user
    has_many :items, dependent: :delete_all
    has_many :carts, through: :items
end
