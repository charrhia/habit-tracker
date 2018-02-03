require 'rails_helper'

feature 'update goals page' do

  # Acceptance Criteria:
  # * WHEN I CLICK ON UPDATE GOALS I SHOULD BE DIRECTED TO '/GOALS/NEW'
  #   I SHOULD SEE A LIST OF ALL MY GOALS
  # * I SHOULD SEE A FORM TO ADD A NEW GOAL
  # * I SHOULD SEE A DELETE BUTTON TO REMOVE GOALS


  scenario 'i should be directed to the /goals/new page when clicking on Update Goals' do

    Goal.create!({
      name: "Eat Healthy"
      })

    visit new_user_registration_path

    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'

    click_button 'Sign up'
    click_link 'Update Goals'

    expect(page).to have_content('Eat Healthy')
    expect(page).to have_current_path('/goals/new')

  end

  scenario 'I should be able to delete each goal' do

    Goal.create!({
      name: "Eat Healthy"
      })

    visit new_user_registration_path

    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'

    click_button 'Sign up'
    click_link 'Update Goals'

    click_link 'delete'
    expect(page).to have_no_content('Eat Healthy')

  end

end
