require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end
end

FactoryBot.define do
  factory :goal do
    name 'Work Out'
    user_id '1'
  end
end
