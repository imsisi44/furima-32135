FactoryBot.define do
  factory :user, class: User do
    nickname               {"abc"}
    email                  {"test@com"}
    password               {"000aaa"}
    password_confirmation  {"000aaa"}
    last_name              {"田中"}
    first_name             {"太朗"}
    last_name_kana         {"タナカ"}
    first_name_kana        {"タロウ"}
    birthday               {"1999-1-1"}
  end

  factory :user2, class: User do
    nickname               {"def"}
    email                  {"tests@com"}
    password               {"111bbb"}
    password_confirmation  {"111bbb"}
    last_name              {"山田"}
    first_name             {"花子"}
    last_name_kana         {"ヤマダ"}
    first_name_kana        {"ハナコ"}
    birthday               {"2000-2-2"}
  end
end
