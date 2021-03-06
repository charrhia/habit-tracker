require 'rails_helper'

feature 'navbar' do
  scenario 'the header should link back to index' do
    visit new_user_registration_path

    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'

    click_button 'Sign up'
    click_link 'Habit Tracker'

    expect(page).to have_content('Habit Tracker')
    expect(page).to have_current_path('/goals')
  end

  scenario 'I want to see a list of user actions' do
    user = FactoryBot.create(:user)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'
    expect(page).to have_content('Signed in successfully')
    expect(page).to have_link('Goals')
    expect(page).to have_link('Settings')
    expect(page).to have_link('Reports')
    expect(page).to have_link('Sign Out')
  end
end
