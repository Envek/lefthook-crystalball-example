FactoryBot.define do
  factory :account do
    sequence(:login) { |n| "account#{n}" }
    sequence(:email) { |n| "person#{n}@example.com" }
  end
end
