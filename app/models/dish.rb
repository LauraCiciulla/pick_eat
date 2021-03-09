class Dish < ApplicationRecord
  belongs_to :restaurant, foreign_key: true
  has_many :dish_ingredients, dependent: :destroy
  has_many :ingredients, through: :dish_ingredients

  validates_presence_of :name, :base_price
end
