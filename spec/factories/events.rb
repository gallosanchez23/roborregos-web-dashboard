FactoryBot.define do
  factory :event do
    name       { FFaker::Name.first_name }
    end_date   { Date.today + 1.week }
    start_date { Date.today + 5.days }

    sponsor
  end
end
