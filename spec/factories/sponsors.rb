FactoryBot.define do
  factory :sponsor do
    name { FFaker::Name.first_name }
    avatar { FFaker::Internet.http_url }
  end
end
