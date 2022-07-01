class Category < ApplicationRecord
  has_many :plan_tag_relations
  has_many :plans, through: :plan_tag_relations
  has_many :tags, through: :plan_tag_relations
end
