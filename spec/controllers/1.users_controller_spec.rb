require 'rails_helper'

feature 'user index' do
  scenario 'I want to successfully create a user' do

    user_variable_7 = FactoryBot.create(:user)
    users = User.all

    expect(users).to include(user_variable_7)
  end
end
