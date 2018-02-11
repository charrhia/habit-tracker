
require 'rails_helper'

RSpec.describe Api::V1::InputsController, type: :controller do
  user_4 = FactoryBot.create(:user)
  let!(:first_goal) { Goal.create(name: 'Eat Healthy', user_id: user_4.id) }
  let!(:first_input) { Input.create(user_id: user_4.id, goal_id: first_goal.id) }

  describe "GET#index" do
    it "should return a list of all the inputs" do
      get :index
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")
      expect(returned_json.length).to eq 1

      expect(returned_json["inputs"][0]["goal_id"]).to eq first_input.goal_id
    end
  end

  describe "GET#day" do
    it "should return a list of all the inputs created in the last day" do
      get :day
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")
      expect(returned_json.length).to eq 1

      expect(returned_json["inputs"][0]["goal_id"]).to eq first_input.goal_id
    end
  end

  describe "GET#week" do
    it "should return a list of all the inputs created in the last week" do
      get :week
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")
      expect(returned_json.length).to eq 1

      expect(returned_json["inputs"][0]["goal_id"]).to eq first_input.goal_id
    end
  end

  describe "GET#month" do
    it "should return a list of all the inputs created in the last month" do
      get :month
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")
      expect(returned_json.length).to eq 1

      expect(returned_json["inputs"][0]["goal_id"]).to eq first_input.goal_id
    end
  end
end
