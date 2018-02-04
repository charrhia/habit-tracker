require 'rails_helper'

RSpec.describe Input, type: :model do

  it { should have_valid(:goal_id).when(1) }

end
