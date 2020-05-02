require 'rails_helper'

RSpec.describe Achievement, type: :model do
  let(:achievement) { FactoryBot.build(:achievement) }
  subject { achievement }

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:team) }
    it { should validate_presence_of(:category) }
    it { should be_valid }
  end

  context 'associations' do
    it { should belong_to(:team) }
    it { should belong_to(:category) }
  end
end
