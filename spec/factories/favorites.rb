FactoryBot.define do
  factory :favorite do
    association :user, factory: :user2
    item
  end
end
