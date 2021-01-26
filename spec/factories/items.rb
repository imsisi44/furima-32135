FactoryBot.define do
  factory :item do
    association :user, factory: :user
    name  {"テスト"}
    introduction {"動作テスト用の商品"}
    category_id {2}
    item_condition_id {2}
    shipping_payer_id {2}
    city_id {2}
    shipping_day_id {2}
    price {1000}
    after(:build) do |item|
      item.image.attach(io: File.open('spec/fixtures/test_image.png'), filename: 'test_image.png', content_type: 'image/png')
    end
  end
end