require 'rails_helper'

feature 'navbar' do

  # Acceptance Criteria:
  # * WHEN I CLICK THE HEADER, I SHOULD BE DIRECTED BACK TO INDEX
  #   WHEN I CLICK ON PROFILE PHOTO OR USER DETAILS, I SHOULD SEE A DROP DOWN
  # * I SHOULD SEE LINKS TO SIGN IN/SIGN OUT

  scenario 'the header should link back to index' do
    visit new_user_registration_path

    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'

    click_button 'Sign up'
    click_link 'Habit Tracker'

    expect(page).to have_content('Habit Tracker')
    expect(page).to have_current_path('/')

  end

  scenario 'I want to see a dropdown for user actions' do
    user = FactoryBot.create(:user)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'
    expect(page).to have_content('Signed in successfully')
    expect(page).to have_link('User Actions')
    expect(page).to have_link('Settings')
    expect(page).to have_link('Dashboard')
    expect(page).to have_link('Sign Out')
  end

end
