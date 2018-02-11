
require 'rails_helper'

feature 'goal index' do
  scenario 'I want to successfully create a goal' do
    goal = Goal.create(name: "Work Out")
    expect(goal.name).to eq("Work Out")

    visit new_user_registration_path

    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'

    click_button 'Sign up'

    click_link 'Goals'

    fill_in 'Goal', with: 'Work Out'
    click_button 'Add'

    expect(page).to have_content('Work Out')
    expect(page).to have_current_path('/goals/new')
  end
end
