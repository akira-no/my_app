class PlanTag
  include ActiveModel::Model

  attr_accessor(
    :category, :item, :start_time, :user_id,
    :id, :created_at, :datetime, :updated_at, :datetime,
    :tag_name
  )

  validates :item,       presence: true
  validates :start_time, presence: true
  validates :user_id,    presence: true

  def save
    plan = Plan.create(category: category, item: item, start_time: start_time, user_id: user_id)
    tag = Tag.where(tag_name: tag_name).first_or_initialize
    tag.save
    PlanTagRelation.create(plan_id: plan.id, tag_id: tag.id)
  end

  def update(params, plan)
    
    plan.update(params)
  end

end
