class InputsController < ApplicationController

  def index
    @goal = Goal.find(params[:goal_id])

    @inputs = @goal.inputs
    @input = Input.new
  end

  def new
    @goal = Goal.find(params[:goal_id])

    @inputs = Input.all
    @input = Input.new
  end

  def create
    input = Input.new(input_params)

    if input.save
      flash[:notice] = "Journal updated"
      redirect_to '/goals'
    else
      render json: { error: input.errors.full_messages }, status: :unprocessable_entity
    end

  end

  def log
    @inputs = Input.where(:user_id => current_user.id)
  end

  def input_params
    params.require(:input).permit(:goal_id, :date, :user_id)
  end
end
