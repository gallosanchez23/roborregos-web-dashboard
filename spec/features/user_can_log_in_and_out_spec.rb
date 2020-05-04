require 'rails_helper'

feature 'User can log in and out' do
  before :each do
    @member = create :member
  end

  scenario 'with complete and valid username and password' do
    visit unauthenticated_root_path

    fill_in 'member_username', with: @member.username
    fill_in 'member_password', with: @member.password

    click_button 'Log in'

    expect(page.current_path).to eq authenticated_root_path
    expect(page).to have_content('Qué hay de nuevo?')
  end

  scenario 'with imcomplete or invalid username and password' do
    visit unauthenticated_root_path

    fill_in 'member_username', with: @member.username
    fill_in 'member_password', with: 'something'

    click_button 'Log in'

    expect(page.current_path).to eq new_member_session_path
    expect(page).to have_content('Usuario y/o contraseña inválida.')
  end

  scenario 'clicking the log out button' do
    login_as @member
    visit members_path

    click_link 'Cerrar Sesión'

    expect(page.current_path).to eq unauthenticated_root_path
    expect(page).to have_content('Nos vemos pronto!')
  end
end
