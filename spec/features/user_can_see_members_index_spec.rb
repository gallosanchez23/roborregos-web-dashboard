require 'rails_helper'

feature 'User can see member index' do
  before :each do
    @member_inactive = Member.create! FactoryBot.attributes_for(:member, status: :inactive, role: :marketing)
    @member_electronics = Member.create! FactoryBot.attributes_for(:member, role: :electronics)
    @member_software = Member.create! FactoryBot.attributes_for(:member, role: :software)
  end

  scenario 'without parameters' do
    visit members_path

    expect(page).to have_content('Miembros')
    expect(page).to have_content('Registrar')
    expect(page).to have_content('Ordenar por')
    expect(find('.single-member', match: :first)).to have_content(@member_inactive.full_name)
  end

  scenario 'with sort_by eq to :role' do
    visit members_path

    click_link 'Rol'

    expect(page).to have_content('Miembros')
    expect(page).to have_content('Registrar')
    expect(page).to have_content('Ordenar por')
    expect(find('.single-member', match: :first)).to have_content(@member_software.full_name)
  end

  scenario 'with sort_by eq to :status' do
    visit members_path

    click_link 'Estatus'

    expect(page).to have_content('Miembros')
    expect(page).to have_content('Registrar')
    expect(page).to have_content('Ordenar por')
    expect(find('.single-member', match: :first)).to have_content(@member_electronics.full_name)
  end
end
