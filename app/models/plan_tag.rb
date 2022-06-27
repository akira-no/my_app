class PlanTag
  include ActiveModel::Model

  attr_accessor :category, :item, :start_time, :user_id

  validates :item,       presence: true
  validates :start_time, presence: true
  validates :user_id,    presence: true

  def save
    Plan.create(category: category, item: item, start_time: start_time, user_id: user_id)
  end
end
