class Animal < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :location_animals, dependent: :destroy
  has_many :locations, through: :location_animals

  validates :name, presence: true
  validates :category, presence: true
end
