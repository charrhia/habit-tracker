require "rails_helper"

RSpec.configure do |config|
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
end


RSpec.describe Input do
  describe "input model creation" do
    it "returns list of input" do

      first_goal = Goal.create(name: "Read More")
      first_input = Input.create(goal_id: first_goal.id)

      inputs = Input.all

      expect(inputs).to include(first_input)
    end
  end
end




RSpec.describe Input, type: :model do

  it { should belong_to :goal }

  it { should have_valid(:goal_id).when(1) }

end
