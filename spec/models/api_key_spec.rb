require 'rails_helper'

RSpec.describe ApiKey, type: :model do
  let(:api_key) { build :api_key }
  subject { api_key }

  context 'validations' do
    it { should validate_presence_of(:service_app) }
    it { should be_valid }
  end

  context 'associations' do
    it { should belong_to(:service_app) }
  end
end
