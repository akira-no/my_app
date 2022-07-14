class Plans::SearchesController < ApplicationController
  def index
    @plans_s = Plan.where('item LIKE(?)', "%#{params[:item]}%")

    respond_to do |format|
      format.html { redirect_to :root }
      format.json { render json: @plans_s }
    end
  end
end