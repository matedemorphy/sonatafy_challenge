FactoryBot.define do
  factory :car do
    make { "MyString" }
    model { "MyString" }
    condition { "new" }
    price { 1 }
    dealership
  end
end
