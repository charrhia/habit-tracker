require 'rails_helper'

feature 'update goals page' do

  scenario 'i should be directed to the /goals/new page when clicking on Update Goals' do

    user = FactoryBot.create(:user)

    goal = Goal.create!({
      name: "Eat Healthy", user_id: user.id
      })

    visit new_user_registration_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password

    click_button 'Sign up'
    click_link 'Goals'

    expect(page).to have_content('Eat Healthy')
    expect(page).to have_current_path('/goals/new')

  end

  scenario 'I should be able to delete each goal' do

    Goal.create!({
      name: "Eat Healthy", user_id: user.id
      })

    visit new_user_registration_path

    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'

    click_button 'Sign up'
    click_link 'Goals'

    click_link '[x]'
    expect(page).to have_no_content('Eat Healthy')

  end

end
