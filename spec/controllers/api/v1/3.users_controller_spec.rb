require 'rails_helper'
RSpec.describe Api::V1::UsersController, type: :controller do

  describe 'GET#index' do
    it 'should return a list of all the users' do

      current_user_2 = FactoryBot.create(:user)
      goal_2 = Goal.create(name: "work out", user_id: current_user_2.id)
      input_2 = Input.create(goal_id: goal_2.id, user_id: current_user_2.id)

      sign_in(current_user_2)
      get :index
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq('application/json')
      expect(returned_json.length).to eq 1
    end
  end
end
