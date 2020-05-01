require 'rails_helper'

RSpec.describe TeamMember, type: :model do
  let(:team_member) { FactoryBot.build(:team_member) }
  subject { team_member }

  context 'validations' do
  	it { should validate_presence_of(:team) }
  	it { should validate_presence_of(:member) }
  	it { should be_valid }
  end

  context 'associations' do
  	it { should belong_to(:team) }
  	it { should belong_to(:member) }
  end
end
