class Api::V1::GoalsController < ApplicationController

  def index
    goal = Goal.all
    render json: goal
  end
end
