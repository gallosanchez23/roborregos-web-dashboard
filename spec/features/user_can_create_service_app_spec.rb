require 'rails_helper'

feature 'User can create service app' do
  before :each do
    @member = create :member
  end

  scenario 'and see all service apps' do
    login_as @member
    visit service_apps_path

    expect(page).to have_content('Service Apps')
    expect(page).to have_content('Registrar')
    expect(page).not_to have_content('Access token:')

    click_button 'Registrar'
    fill_in 'service_app_name', with: 'New service'
    fill_in 'service_app_description', with: 'Description for the new service'
    click_button 'Guardar'

    expect(page.current_path).to eq service_apps_path
    expect(page).to have_content('New service')
    expect(page).to have_content('Description for the new service')
    expect(page).to have_content('Access token:')
  end
end
