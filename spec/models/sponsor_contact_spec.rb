require 'rails_helper'

RSpec.describe SponsorContact, type: :model do
  let(:sponsor_contact) { FactoryBot.build(:sponsor_contact) }
  subject { sponsor_contact }

  context 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:sponsor) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:fathers_last_name) }
    it { should be_valid }
  end

  context 'associations' do
    it { should belong_to(:sponsor) }
  end
end
