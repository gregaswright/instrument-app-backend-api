class AddHistoryToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :history, :boolean
  end
end
