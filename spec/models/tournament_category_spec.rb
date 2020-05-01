require 'rails_helper'

RSpec.describe TournamentCategory, type: :model do
  let(:tournament_category) { FactoryBot.build(:tournament_category) }
  subject { tournament_category }

  context 'validations' do
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:tournament) }
    it { should be_valid }
  end

  context 'associations' do
    it { should belong_to(:category) }
    it { should belong_to(:tournament) }
  end
end
