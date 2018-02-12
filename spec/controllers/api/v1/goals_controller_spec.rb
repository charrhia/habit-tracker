require 'rails_helper'

RSpec.describe Api::V1::GoalsController, type: :controller do
  user_5 = FactoryBot.create(:user)
  let!(:first_goal) { Goal.create(name: 'Eat Healthy', user_id: user_5.id) }

  describe 'GET#index' do
    it 'should return a list of all the goals' do
      get :index
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq('application/json')
      expect(returned_json.length).to eq 1

      expect(returned_json['goals'][0]['name']).to eq first_goal.name
    end
  end
end
