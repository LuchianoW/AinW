class Location < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :location_animals, dependent: :destroy
  has_many :animals, through: :location_animals

  validates :range, presence: true
end
