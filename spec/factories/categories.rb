FactoryBot.define do
  factory :category do
    name { FFaker::Name.first_name }
  end
end
