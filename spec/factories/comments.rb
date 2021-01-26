FactoryBot.define do
  factory :comment do
    user
    item
    text {"テスト"}
  end
end
