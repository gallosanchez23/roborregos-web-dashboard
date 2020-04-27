require 'rails_helper'

RSpec.describe Tournament, type: :model do
  let(:tournament) { FactoryBot.build(:tournament) }
  subject { tournament }

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:type) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:end_date) }
    it { should validate_presence_of(:start_date) }
    it { should be_valid }
  end

  context 'associations' do
    it { should have_many(:categories) }
    it { should have_many(:tournament_categories) }
  end
end
