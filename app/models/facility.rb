class Facility < ApplicationRecord
  belongs_to :park
  validates :amenity, presence: true
  validates :description, presence: true
end
