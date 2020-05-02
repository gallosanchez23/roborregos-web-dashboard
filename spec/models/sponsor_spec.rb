require 'rails_helper'

RSpec.describe Sponsor, type: :model do
  let(:sponsor) { FactoryBot.build(:sponsor) }
  subject { sponsor }

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:avatar) }
    it { should be_valid }
  end

  context 'associations' do
    it { should have_many(:arrangements) }
    it { should have_many(:contacts) }
    it { should have_many(:events) }
  end
end
