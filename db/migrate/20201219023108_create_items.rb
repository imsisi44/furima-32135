class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :introduction, null: false
      t.references :user, foreign_key: true
      t.integer :category_id, null: false
      t.integer :item_condition_id, null: false
      t.integer :shipping_payer_id, null: false
      t.integer :city_id, null: false
      t.integer :shipping_day_id, null: false
      t.integer :price, null: false
      t.timestamps
    end
  end
end