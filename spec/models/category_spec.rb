require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { FactoryBot.build(:category) }
  subject { category }

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should be_valid }
  end

  context 'associations' do
    it { should have_many(:teams) }
    it { should have_many(:achievements) }
    it { should have_many(:tournament_categories) }
    it { should have_many(:tournaments).through(:tournament_categories) }
  end
end
