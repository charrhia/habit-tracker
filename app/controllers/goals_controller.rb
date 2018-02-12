class GoalsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index

    @goals = Goal.all
    @goal = Goal.new

    @inputs = Input.all
    @input = Input.new

    @user_goals = Goal.where(:user_id => current_user.id)
    @goal_options = @user_goals.map { |goal| [goal.name, goal.id] }
  end

  def log

    @inputs = Input.where(:user_id => current_user.id)
  end

  def new

    @goal = Goal.new
    @goals = Goal.where(:user_id => current_user.id)

    @inputs = Input.all
    @input = Input.new
  end

  def create

    @goals = Goal.all
    @goal = Goal.new(goal_params)

    if @goal.save
      flash[:notice] = 'Goal saved successfully!'
      redirect_to '/goals/new'
    else
      render '/goals/new'
    end
  end

  def show

    @goals = Goal.all
    @inputs = Input.all
  end

  def edit

    @goal = Goal.find(params[:id])
  end

  def update

    @goal = Goal.find(params[:id])
    if @goal.update(goal_params)
      redirect_to '/goals/new'
    else
      render '/goals/new'
    end
  end

  def destroy

    @goals = Goal.where(:user_id => current_user.id)

    @goal = Goal.find(params[:id])
    if @goal.destroy
      render '/goals/new'
    else
      render '/goals/new'
    end
  end

  private

  def goal_params
    
    params.require(:goal).permit(:name, :user_id)
  end
end
