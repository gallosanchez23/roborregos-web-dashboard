FactoryBot.define do
  factory :service_app do
    name   		 { FFaker::Name.first_name }
    active 		 { true }
    access_api { 1 }
  end
end
