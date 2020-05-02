FactoryBot.define do
  factory :arrangement do
    amount           { 100 }
    end_date         { Date.today + 1.year }
    start_date       { Date.today - 1.year }
    sponsorship_type { 'cash' }

    sponsor
  end
end
