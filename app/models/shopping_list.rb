class ShoppingList < ApplicationRecord
  has_many :food_items, dependent: :destroy
  accepts_nested_attributes_for :food_items,
                                            reject_if: proc { |attributes| attributes['food_item'].blank?},
                                            allow_destroy: true
validates :name,
            presence: true
end
