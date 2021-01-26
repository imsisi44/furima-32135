FactoryBot.define do
  factory :purchase do
    association :user, factory: :user2
    item
  end
end
