class Api::V1::InputsController < ApplicationController
  def index
    inputs = Input.all
    render json: inputs
  end


  def day

    report_1_day = Input.group_by_day(:created_at, range: 1.days.ago.midnight..Time.now).count
    render json: report_1_day

  end

  def week

    report_1_weeks = Input.group_by_day(:created_at, range: 1.weeks.ago.midnight..Time.now).count
    render json: report_1_weeks
  end


  def month

    report_4_weeks = Input.group_by_day(:created_at, range: 4.weeks.ago.midnight..Time.now).count
    render json: report_4_weeks

  end


end
