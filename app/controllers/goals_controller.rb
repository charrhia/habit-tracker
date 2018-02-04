class GoalsController < ApplicationController

  def index
    @goals = Goal.all
    @goal = Goal.new

    @inputs = Input.all
    @input = Input.new



  end

  def new
    @goals = Goal.all
    @goal = Goal.new

    @inputs = Input.all
    @input = Input.new

  end

  def create
    @goals = Goal.all
    @goal = Goal.new(goal_params)

    if @goal.save
      flash[:notice] = "Goal saved successfully!"
      redirect_to '/goals/new'
    else
      render '/goals/new'
    end
  end

  def show
    @goals = Goal.all
    @inputs = Input.all



  end

  def destroy
    @goals = Goal.all
    @goal = Goal.find(params[:id])
    if @goal.destroy
      render '/goals/new'
    else
      render '/goals/new'
    end
  end




  private


  def goal_params
    params.require(:goal).permit(:name)
  end

end
