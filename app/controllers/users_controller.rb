class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @plans = @user.plans
  end
end
