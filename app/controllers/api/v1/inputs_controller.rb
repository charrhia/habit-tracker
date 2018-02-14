class Api::V1::InputsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:index]
  protect_from_forgery unless: -> { request.format.json? }

  def index
    inputs = Input.all
    render json: inputs
  end

  def day
    date = DateTime.now

    input = Input.where(:user_id => current_user.id)

    inputs = input.where(created_at: date.midnight..date.end_of_day)

    render json: inputs
  end

  def week
    date = DateTime.now

    input = Input.where(:user_id => current_user.id)

    inputs = input.where(created_at: date.midnight..date.end_of_week)

    render json: inputs
  end

  def month
    date = DateTime.now

    input = Input.where(:user_id => current_user.id)

    inputs = input.where(created_at: date.midnight..date.end_of_month)

    render json: inputs
  end

  private

  def input_params
    params.require(:input).permit(:goal_id, :date, :user_id)
  end
end
