class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :dishes, dependent: :destroy
  has_many :ingredients, dependent: :destroy

  validates_presence_of :name, :address, :phone_number, :cuisine
  validates :name, uniqueness: true
end
