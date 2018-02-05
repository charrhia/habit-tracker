require "rails_helper"

RSpec.describe Api::V1::GoalsController, type: :controller do
  let!(:first_goal) { Goal.create(name: "Work out") }
  let!(:second_goal) { Goal.create(name: "Eat Healthy") }

  describe "GET#index" do
    it "should return a list of all the goals ordered by likes" do

      get :index
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

      expect(returned_json.length).to eq 1
      expect(returned_json["goals"][0]["name"]).to eq first_goal.name
      expect(returned_json["goals"][1]["name"]).to eq second_goal.name
    end
  end
end
