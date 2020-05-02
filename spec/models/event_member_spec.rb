require 'rails_helper'

RSpec.describe EventMember, type: :model do
  let(:event_member) { FactoryBot.build(:event_member) }
  subject { event_member }

  context 'validations' do
    it { should validate_presence_of(:event) }
    it { should validate_presence_of(:member) }
    it { should be_valid }
  end

  context 'associations' do
    it { should belong_to(:event) }
    it { should belong_to(:member) }
  end
end
