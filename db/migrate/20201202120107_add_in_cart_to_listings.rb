class AddInCartToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :in_cart, :boolean
  end
end
