require 'rails_helper'

feature 'journal index page' do

  scenario 'I should be able to successfully record data for a goal' do
    visit new_user_registration_path

    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'

    click_button 'Sign up'

    click_link 'Goals'

    fill_in 'Goal', with: 'Eat Healthy'
    click_button 'Add Goal'

    click_link 'Home'

    select 'Eat Healthy', from: 'Goal'
    click_button 'Submit'

    expect(page).to have_content('Journal updated')
    expect(page).to have_current_path('/goals')
  end
end
