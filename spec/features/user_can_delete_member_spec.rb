require 'rails_helper'

feature 'User can delete an existing member' do
  before :each do
    @member_to_delete = create :member
    @member = create :member
  end

  scenario 'and succeeded' do
    login_as @member
    visit members_path

    expect(page.current_path).to eq members_path
    expect(page).to have_content('Miembros')
    expect(page).to have_content(@member_to_delete.full_name)

    find(:css, "a[data-method='delete']", match: :first).click

    expect(page.current_path).to eq members_path
    expect(page).to have_content('Miembros')
    expect(page).not_to have_content(@member_to_delete.full_name)
  end
end
