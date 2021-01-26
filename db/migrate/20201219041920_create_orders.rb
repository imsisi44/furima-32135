class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :post_code, null: false
      t.integer :city_id, null: false
      t.string :municipality, null: false
      t.string :house_number, null: false
      t.string :building_number
      t.string :phone_number, null: false
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.timestamps
    end
  end
end
