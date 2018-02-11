class Api::V1::InputsController < ApplicationController
  def index
    inputs = Input.all
    render json: inputs
  end

  def day
    date = DateTime.now
    inputs = Input.where(created_at: date.midnight..date.end_of_day)

    # report_1_day = Input.group_by_day(:created_at, range: 1.days.ago.midnight..Time.now).count
    render json: inputs
  end

  def week
    date = DateTime.now
    inputs = Input.where(created_at: date.midnight..date.end_of_week)
    #
    # report_1_weeks = Input.group_by_day(:created_at, range: 1.weeks.ago.midnight..Time.now).count
    render json: inputs
  end

  def month
    date = DateTime.now
    inputs = Input.where(created_at: date.midnight..date.end_of_month)

    # report_4_weeks = Input.group_by_day(:created_at, range: 4.weeks.ago.midnight..Time.now).count
    render json: inputs
  end
end
