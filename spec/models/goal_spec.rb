require "rails_helper"

RSpec.configure do |config|
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
end



RSpec.describe Goal do
  describe "goal model creation" do
    it "returns list of goals" do
      first_goal = Goal.create(name: "Work Out")
      second_goal = Goal.create(name: "Eat Healthy")

      goals = Goal.all

      expect(goals).to include(first_goal)
      expect(goals).to include(second_goal)
    end
  end
end



RSpec.describe Goal, type: :model do

  it { should have_many :inputs }

  it { should have_valid(:name).when("Work Out") }
  it { should_not have_valid(:name).when(nil, "") }


end
