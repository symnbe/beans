FactoryBot.define do
  factory :user do
    name { 'John' }
    email { Faker::Internet.email }
    password { 'password' }
  end
end