class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.belongs_to :cart, null: false, foreign_key: true
      t.belongs_to :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
