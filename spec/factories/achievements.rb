FactoryBot.define do
  factory :achievement do
    name        { FFaker::Name.first_name }
    description { FFaker::LoremIE.sentences(num = 2) }
    
    team
    category
  end
end
