class Plan < ApplicationRecord
  belongs_to :user
  has_many :plan_tag_relations
  has_many :tags, through: :plan_tag_relations
  has_many :categories, through: :plan_tag_relations
end
