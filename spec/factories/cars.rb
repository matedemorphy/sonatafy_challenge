FactoryBot.define do
  factory :car do
    make { "MyString" }
    model { "MyString" }
    condition { "new" }
    price { 100000000 }
    dealership
  end
end
