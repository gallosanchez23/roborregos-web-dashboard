require 'rails_helper'

RSpec.describe ArrangementMember, type: :model do
  let(:arrangement_member) { FactoryBot.build(:arrangement_member) }
  subject { arrangement_member }

  context 'validations' do
    it { should validate_presence_of(:member) }
    it { should validate_presence_of(:arrangement) }
    it { should be_valid }
  end

  context 'associations' do
    it { should belong_to(:member) }
    it { should belong_to(:arrangement) }
  end
end
