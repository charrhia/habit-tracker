class InputsController < ApplicationController

  def index
    # @inputs = Input.all
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
    @inputs = Input.all
  end



  def input_params
    params.require(:input).permit(:goal_id, :date)
  end

end
