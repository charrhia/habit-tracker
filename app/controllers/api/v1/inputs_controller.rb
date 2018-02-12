class Api::V1::InputsController < ApplicationController
  def index

    inputs = Input.all
    render json: inputs
  end

  def day

    date = DateTime.now
    inputs = Input.where(created_at: date.midnight..date.end_of_day)

    render json: inputs
  end

  def week

    date = DateTime.now
    inputs = Input.where(created_at: date.midnight..date.end_of_week)

    render json: inputs
  end

  def month

    date = DateTime.now
    inputs = Input.where(created_at: date.midnight..date.end_of_month)

    render json: inputs
  end
end
