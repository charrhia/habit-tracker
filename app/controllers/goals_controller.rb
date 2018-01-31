class GoalsController < ApplicationController



  def index
    @goals = Goal.all
    @goal = Goal.new
  end

  def new
    @goal = Goal.new
    @goals = Goal.all
  end




end
