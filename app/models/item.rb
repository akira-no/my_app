class Item < ApplicationRecord
  belongs_to :calendar

  with_option presence: true do
    validates :item_name
  end
end
