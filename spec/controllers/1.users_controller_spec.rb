require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  include Devise::TestHelpers

  describe "#index" do
    it "user index" do

      current_user_2 = FactoryBot.create(:user)
      sign_in(current_user_2)

      get :index, params: { id: current_user_2.id }

      returned_json = response.body
      expect(response.status).to eq 200
    end
  end
end
