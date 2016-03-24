



FactoryGirl.define do
  factory :car do
    make { Faker::Company.name }
    model { Faker::Company.name }
    year { Faker::Number.number(4) }
    price { Faker::Commerce.price }

  end
end

