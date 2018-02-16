require 'rails_helper'

RSpec.describe GoalsController, :type => :controller do
  include Devise::TestHelpers

  describe "#index" do
    it "input index" do
      current_user = FactoryBot.create(:user)
      goal_1 = Goal.create(name: "work out", user_id: current_user.id)

      sign_in(current_user)

      get :index, params: { id: goal_1.id }

      returned_json = response.body
      expect(response.status).to eq 200
    end
  end

  describe "#new" do
    it "goal new" do
      current_user = FactoryBot.create(:user)
      goal_1 = Goal.create(name: "work out", user_id: current_user.id)
      input_1 = Input.create(goal_id: goal_1.id, user_id: current_user.id)

      sign_in(current_user)

      get :new

      returned_json = response.body
      expect(response.status).to eq 200
    end
  end

  describe "#show" do
    it "goal show" do
      current_user = FactoryBot.create(:user)
      goal_1 = Goal.create(name: "work out", user_id: current_user.id)
      input_1 = Input.create(goal_id: goal_1.id, user_id: current_user.id)

      sign_in(current_user)

      get :show, params: { id: goal_1.id }

      returned_json = response.body
      expect(response.status).to eq 200
    end
  end

  describe "#create" do
    it "goal create" do
      current_user = FactoryBot.create(:user)
      goal_1 = Goal.create(name: "work out", user_id: current_user.id)
      input_1 = Input.create(goal_id: goal_1.id, user_id: current_user.id)

      sign_in(current_user)
      expect{ post(:create, {}) }.to raise_error ActionController::ParameterMissing
    end
  end

  describe "#update" do
    it "goal update" do
      current_user = FactoryBot.create(:user)
      goal_1 = Goal.create(name: "work out", user_id: current_user.id)
      input_1 = Input.create(goal_id: goal_1.id, user_id: current_user.id)

      sign_in(current_user)
      expect{ post(:update, params: { id: goal_1.id }) }.to raise_error ActionController::ParameterMissing
    end
  end

  describe "#edit" do
    it "goal edit" do
      current_user = FactoryBot.create(:user)
      goal_1 = Goal.create(name: "work out", user_id: current_user.id)
      input_1 = Input.create(goal_id: goal_1.id, user_id: current_user.id)

      sign_in(current_user)

      get :edit, params: { id: goal_1.id }

      returned_json = response.body
      expect(response.status).to eq 200
    end
  end

  describe "#destroy" do
    it "goal destroy" do
      current_user = FactoryBot.create(:user)
      goal_1 = Goal.create(name: "work out", user_id: current_user.id)
      input_1 = Input.create(goal_id: goal_1.id, user_id: current_user.id)

      sign_in(current_user)

      get :destroy, params: { id: goal_1.id }

      returned_json = response.body
      expect(response.status).to eq 200
    end
  end
end
