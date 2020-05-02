require 'rails_helper'

feature 'User can delete an existing member' do
  before :each do
    @member = FactoryBot.create(:member)
  end

  scenario 'and succeeded' do
    visit members_path

    expect(page.current_path).to eq members_path
    expect(page).to have_content('Miembros')
    expect(page).to have_content(@member.full_name)

    find(:css, "a[data-method='delete']").click

    expect(page.current_path).to eq members_path
    expect(page).to have_content('Miembros')
    expect(page).not_to have_content(@member.full_name)
  end
end
