require 'rails_helper'

RSpec.describe Api::V1::GoalsController, type: :controller do

  describe 'GET#index' do
    it 'should return a list of all the goals' do

      current_user = FactoryBot.create(:user)
      goal_1 = Goal.create(name: "work out", user_id: current_user.id)

      sign_in(current_user)

      get :index, params: { id: goal_1.id }
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq('application/json')
      expect(returned_json.length).to eq 1
    end
  end
end
