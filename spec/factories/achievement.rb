FactoryBot.define do
  factory :achievement do
    name        {FFaker::LoremIE.words(num = 2)}
    description {FFaker::LoremIE.sentences(num = 2)}
    team
    category
  end
end
