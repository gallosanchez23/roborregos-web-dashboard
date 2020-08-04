require 'rails_helper'

feature 'User can see service apps index' do
  before :each do
    @member = create :member
    @service_app = create :service_app
  end

  scenario 'and see all service apps' do
    login_as @member
    visit service_apps_path

    expect(page).to have_content('Service Apps')
    expect(page).to have_content('Registrar')
    expect(page).to have_content('Access token:')
    find("#access_token_#{@service_app.id}")
  end
end
