require 'rails_helper'

feature 'User can edit an existing member' do
  before :each do
    @member = create :member
  end

  scenario 'with complete information' do
    login_as @member
    visit members_path

    find(:css, "a[href='/members/#{@member.id}/edit']").click

    expect(page.current_path).to eq edit_member_path(@member)
    expect(page).to have_content("Editar - #{@member.full_name}")
    expect(page).to have_button('Guardar')
    expect(page).to have_link('Regresar')

    fill_in 'member_first_name', with: 'Eduardo'
    fill_in 'member_fathers_last_name', with: 'Sanchez'
    fill_in 'member_mothers_last_name', with: 'Yepiz'
    select 'ITC', from: 'member_major'
    fill_in 'member_email', with: 'gallo@gmail.com'
    fill_in 'member_generation', with: '2'
    select 'Software', from: 'member_role'
    select 'Activo', from: 'member_status'
    fill_in 'member_start_date', with: '01/01/2015'

    click_button 'Guardar'

    expect(page).to have_content('Eduardo Sanchez Yepiz')
  end

  scenario 'missing required information' do
    login_as @member
    visit members_path

    find(:css, "a[href='/members/#{@member.id}/edit']").click

    expect(page.current_path).to eq edit_member_path(@member)
    expect(page).to have_content("Editar - #{@member.full_name}")
    expect(page).to have_button('Guardar')
    expect(page).to have_link('Regresar')

    fill_in 'member_first_name', with: ''

    click_button 'Guardar'

    expect(page).to have_content('Editar - ')
  end
end
