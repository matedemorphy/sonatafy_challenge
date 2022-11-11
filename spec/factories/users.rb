FactoryBot.define do
  factory :user do
    full_name { "MyString" }
    password { "MyString" }
    password_confirmation { "MyString" }
    email { "contact@dealership.com" }
    admin { true }
  end
end
