require 'rails_helper'

feature 'update goals page' do

  scenario 'i should be directed to the /goals/new page when clicking on Update Goals' do

    visit new_user_registration_path

    fill_in 'Email', with: 'jane@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'

    click_button 'Sign up'

    click_link 'Goals'

    fill_in 'Goal', with: 'Eat Healthy'
    click_button 'Add Goal'

    expect(page).to have_content('Eat Healthy')
    expect(page).to have_current_path('/goals/new')

  end

  scenario 'I should be able to delete each goal' do

    visit new_user_registration_path

    fill_in 'Email', with: 'jane@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'

    click_button 'Sign up'

    click_link 'Goals'

    fill_in 'Goal', with: 'Eat Healthy'
    click_button 'Add Goal'

    expect(page).to have_content('Eat Healthy')
    expect(page).to have_current_path('/goals/new')

    click_link '[x]'
    expect(page).to have_no_content('Eat Healthy')

  end

end
