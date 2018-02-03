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



end
