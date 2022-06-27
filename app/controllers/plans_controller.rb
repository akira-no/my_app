class PlansController < ApplicationController
  before_action :authenticate_user!

  def index
    @plans = Plan.all
    @plan = Plan.new
  end

  def new
  end
  
  def create
    @plan =Plan.new(plan_params)
    if @plan.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:category, :item, :start_time).merge(user_id: current_user.id)
  end

end
