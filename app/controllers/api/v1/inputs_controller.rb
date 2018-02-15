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

    input_stats = current_user.inputs.where("created_at > ?", Time.now.beginning_of_day).group(:goal_id).count

    render json: input_stats
  end

  def week
    date = DateTime.now

    input = Input.where(:user_id => current_user.id)

    inputs = input.where(created_at: date.midnight..date.end_of_week)

    input_stats = current_user.inputs.where("created_at > ?", Time.now.beginning_of_week).group(:goal_id).count

    render json: input_stats
  end

  def month
    date = DateTime.now

    input = Input.where(:user_id => current_user.id)

    inputs = input.where(created_at: date.midnight..date.end_of_month)

    input_stats = current_user.inputs.where("created_at > ?", Time.now.beginning_of_month).group(:goal_id).count

    render json: input_stats
  end

  private

  def input_params
    params.require(:input).permit(:goal_id, :date, :user_id)
  end
end
