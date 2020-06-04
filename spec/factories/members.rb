FactoryBot.define do
  factory :member do
    role              { 'software' }
    email             { FFaker::Internet.email }
    major             { 'ITC' }
    status            { 'active' }
    username          { FFaker::Internet.user_name }
    password          { FFaker::Internet.password }
    generation        { 2 }
    first_name        { FFaker::Name.first_name }
    start_date        { Date.today - 3.years }
    github_username   { FFaker::Internet.user_name }
    fathers_last_name { FFaker::Name.last_name }
    mothers_last_name { FFaker::Name.last_name }
  end
end
