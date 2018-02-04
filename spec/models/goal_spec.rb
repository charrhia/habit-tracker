require 'rails_helper'

RSpec.describe Goal, type: :model do

  it { should have_valid(:name).when('Eat Healthy') }
  it { should_not have_valid(:name).when(nil, '') }

end
