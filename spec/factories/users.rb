FactoryBot.define do
  factory :user do
    association :author, factory: :user, strategy: :build
    name "MyString"
    email { Faker::Internet.email }
    password "123ewq"
    password_confirmation "123ewq"
  end
end
