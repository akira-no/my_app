class Tag < ApplicationRecord
  has_many :plan_tag_relations
  has_many :plans, through: :plan_tag_relations
  has_many :categories, through: :plan_tag_relations
  
end
