class Api::V1::InputsController < ApplicationController
  def index
    # render json: Input.all


      report_1_week = Input.group_by_day(:created_at, range: 1.weeks.ago.midnight..Time.now).count

      report_4_weeks = Input.group_by_day(:created_at, range: 4.weeks.ago.midnight..Time.now).count

      report_1_year = Input.group_by_day(:created_at, range: 52.weeks.ago.midnight..Time.now).count

      render json: report_1_week
  end


# work in progress to get inputs by week and by month and by year
# for ex, do Date.today - Run.last_created_at.to_date to find how many days since last run recorded

# Then possible sum those data pieces in question and prepare a hash
#that has the sums prepared








end
