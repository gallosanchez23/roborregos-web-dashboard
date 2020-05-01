FactoryBot.define do
  factory :sponsor_contact do
    email             { FFaker::Internet.email }
    first_name        { FFaker::Name.first_name }
    fathers_last_name { FFaker::Name.last_name }

    sponsor
  end
end
