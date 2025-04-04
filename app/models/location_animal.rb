class LocationAnimal < ApplicationRecord
  belongs_to :location
  belongs_to :animal

  validates :location, presence: true
  validates :animal, presence: true
end
