require 'rails_helper'

RSpec.describe ServiceApp, type: :model do
  let(:service_app) { build :service_app }
  subject { service_app }

  context 'validations' do
  	it { should validate_presence_of(:name) }
  	it { should validate_presence_of(:active) }
    it { should validate_presence_of(:access_api) }
  	it { should be_valid }
  end

  context 'associations' do
  	it { should have_one(:api_key) }
  end
end
