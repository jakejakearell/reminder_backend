FactoryBot.define do
  factory :reminder do
    time { "2021-09-29 09:44:14" }
    start_date { "2021-09-29" }
    end_date { "2021-09-29" }
    message { "MyText" }
    user_id { 1 }
    email { "MyString" }
  end
end
