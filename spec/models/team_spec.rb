require 'rails_helper'

RSpec.describe Team, type: :model do
  let(:team) { FactoryBot.build(:team) }
  subject { team }

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:category) }
    it { should be_valid }
  end

  context 'associations' do
    it { should belong_to(:category) }
    it { should have_many(:achievements) }
    it { should have_many(:team_members) }
    it { should have_many(:members).through(:team_members) }
  end
end
