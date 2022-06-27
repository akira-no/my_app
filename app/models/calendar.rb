class Calendar < ApplicationRecord
  has_many :items
  belongs_to :user

  with_option presence: true do
    validates :start_time
  end
end
