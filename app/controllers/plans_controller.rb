class PlansController < ApplicationController
  # before_action :authenticate_user!

  def index
    @plans = Plan.all
    @plan_tag = PlanTag.new
    @plan = Plan.new
    @q = Plan.ransack(params[:q])
    @plans = @q.result
    @tags = Tag.all
  end

  def new
  end
  
  def create
    @plan_tag = PlanTag.new(plan_tag_params)
    date = params.require(:plan_tag).permit(:start_time)
    start_time = Date.parse(date["start_time(1i)"] + "-" + date["start_time(2i)"] + "-" + date["start_time(3i)"])
    @plan_tag = PlanTag.new(plan_tag_params.merge(start_time: start_time))
    if @plan_tag.valid?
      @plan_tag.save
      redirect_to root_path
    else
      render :index
    end
  end

    # def edit
    #   @plan = Plan.find(params[:id])
    #   plan_attributes = @plan.attributes
    #   @plan_tag = PlanTag.new(plan_attributes)
    # end

    # def update
    #   @plan_tag = PlanTag.new(plan_tag_params)
    #   @plans = Plan.all
    #   date = params.require(:plan_tag).permit(:start_time)
    #   start_time = Date.parse(date["start_time(1i)"] + "-" + date["start_time(2i)"] + "-" + date["start_time(3i)"])
    #   @plan_tag = PlanTag.new(plan_tag_params.merge(start_time: start_time))
    #   if @plan_tag.valid?
    #     @plan_tag.update(plan_tag_params, @plan)
    #     redirect_to root_path
    #   else
    #     render :index
    #   end
    # end

    def search_text
      return nil if params[:keyword] == ""
      tag = Tag.where(['tag_name LIKE ?', "%#{params[:keyword]}%"])
      render json:{ keyword: tag }
    end

    def searchtag
      @q = Plan.ransack(params[:q])
      @plans = @q.result
    end


  private

  def plan_tag_params
    params.require(:plan_tag).permit(:category, :item, :tag_name).merge(user_id: current_user.id)
  end

end
