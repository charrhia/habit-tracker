require "rails_helper"

RSpec.configure do |config|
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
end


RSpec.describe Input do
  describe "input model creation" do
    it "returns list of input" do

      user_3 = FactoryBot.create(:user)

      first_goal = Goal.create(name: "Read More", user_id: user_3.id)
      first_input = Input.create(goal_id: first_goal.id, user_id: user_3.id)

      inputs = Input.all

      expect(inputs).to include(first_input)
    end
  end
end




RSpec.describe Input, type: :model do

  it { should belong_to :goal }
  it { should belong_to :user }


  it { should have_valid(:goal_id).when(1) }

end
