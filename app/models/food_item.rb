class FoodItem < ApplicationRecord
  belongs_to :shopping_list, optional: true
  validates :food_item,
              presence: true
end
