require 'rails_helper'

RSpec.describe Arrangement, type: :model do
  let(:arrangement) { FactoryBot.build(:arrangement) }
  subject { arrangement }

  context 'validations' do
    it { should validate_presence_of(:amount) }
    it { should validate_presence_of(:sponsor) }
    it { should validate_presence_of(:end_date) }
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:sponsorship_type) }
    it { should be_valid }
  end

  context 'associations' do
    it { should belong_to(:sponsor) }
    it { should have_many(:arrangement_members) }
    it { should have_many(:members).through(:arrangement_members) }
  end
end
