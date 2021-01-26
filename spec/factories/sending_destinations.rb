FactoryBot.define do
  factory :sending_destination do
    association :user, factory: :user2
    item
    post_code  {"111-1111"}
    city_id {2}
    municipality {"テスト"}
    house_number {"テスト1-1-1"}
    building_number {"テスト111"}
    phone_number {00000000000}
  end
end
