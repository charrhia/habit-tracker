
require 'rails_helper'

feature 'goal index' do


  scenario 'I want to successfully create a goal' do

    goal = Goal.create(name: "Work Out")
    expect(goal.name).to eq("Work Out")
  end

end
