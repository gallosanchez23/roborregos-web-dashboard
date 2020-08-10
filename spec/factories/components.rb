FactoryBot.define do
  factory :component do
    name { FFaker::Name.first_name }
    component_category
    img_path { FFaker::Internet.http_url }
    stock { 10 }
  end
end
