class Api::V1::GoalsController < ApplicationController
   skip_before_action :verify_authenticity_token, only: [:index]
   protect_from_forgery unless: -> { request.format.json? }

  def index
    goal = Goal.where(:user_id => current_user.id)

    render json: goal
  end

  private

  def goal_params
    params.require(:goal).permit(:name, :user_id)
  end
end
