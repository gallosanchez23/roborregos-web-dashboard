FactoryBot.define do
  factory :tournament do
    name       { FFaker::Name.first_name }
    city       { FFaker::Address.city }
    type       { 0 }
    country    { FFaker::Address.country }
    end_date   { Date.today + 5.days }
    start_date { Date.today + 4.days }
  end
end
