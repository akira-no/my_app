class Tag < ApplicationRecord
  has_many :plan_tag_relations
  has_many :plans, through: :plan_tag_relations

  validates :tag_name, uniqueness: true
end
