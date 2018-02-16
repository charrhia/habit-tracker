require 'rails_helper'

RSpec.describe InputsController, :type => :controller do
  include Devise::TestHelpers

  describe "#index" do
    it "input index" do
      current_user_2 = FactoryBot.create(:user)
      goal_2 = Goal.create(name: "work out", user_id: current_user_2.id)
      input_2 = Input.create(goal_id: goal_2.id, user_id: current_user_2.id)

      sign_in(current_user_2)

      get :index, params: { goal_id: goal_2.id }

      returned_json = response.body
      expect(response.status).to eq 200
    end
  end

  describe "#new" do
    it "input new" do
      current_user_2 = FactoryBot.create(:user)
      goal_2 = Goal.create(name: "work out", user_id: current_user_2.id)
      input_2 = Input.create(goal_id: goal_2.id, user_id: current_user_2.id)

      sign_in(current_user_2)

      get :new, params: { goal_id: goal_2.id }

      returned_json = response.body
      expect(response.status).to eq 200
    end
  end

  describe "#create" do
    it "input create" do
      current_user_2 = FactoryBot.create(:user)
      goal_2 = Goal.create(name: "work out", user_id: current_user_2.id)
      input_2 = Input.create(goal_id: goal_2.id, user_id: current_user_2.id)

      sign_in(current_user_2)
      expect{ post(:create, {}) }.to raise_error ActionController::ParameterMissing
    end
  end

  describe "#log" do
    it "goal log" do
      current_user_2 = FactoryBot.create(:user)
      goal_2 = Goal.create(name: "work out", user_id: current_user_2.id)
      input_2 = Input.create(goal_id: goal_2.id, user_id: current_user_2.id)

      sign_in(current_user_2)

      get :log
      returned_json = response.body
      expect(response.status).to eq 200
    end
  end

  describe "#destroy" do
    it "input destroy" do
      current_user_2 = FactoryBot.create(:user)
      goal_2 = Goal.create(name: "work out", user_id: current_user_2.id)
      input_2 = Input.create(goal_id: goal_2.id, user_id: current_user_2.id)

      sign_in(current_user_2)

      get :destroy, params: { id: input_2.id }

      returned_json = response.body
      expect(response.status).to eq 302
    end
  end
end
