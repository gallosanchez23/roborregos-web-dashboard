FactoryBot.define do
  factory :team do
    name { FFaker::Name.first_name }

    category
  end
end
