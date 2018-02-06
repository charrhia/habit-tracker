require 'rails_helper'

feature 'journal index page' do


  scenario 'I should be able to successfully record data for a goal' do

    Goal.create({
      name: "Eat Healthy"
      })


    Input.create({
      goal_id: 1
      })

    visit new_user_registration_path

    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'

    click_button 'Sign up'

    select 'Eat Healthy', from: 'Goal'
    click_button 'Submit'


    expect(page).to have_content('Journal updated')
    expect(page).to have_current_path('/goals')

  end
end
