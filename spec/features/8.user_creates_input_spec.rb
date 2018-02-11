
require 'rails_helper'

feature 'Input creation' do
  scenario 'I want to successfully create input data' do

    goal = Goal.create(name: "Work Out")
    input = Input.create(goal_id: 1)

    expect(goal.name).to eq("Work Out")
    expect(input.goal_id).to eq(1)
  end
end
