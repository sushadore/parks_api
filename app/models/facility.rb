class Facility < ApplicationRecord
  belongs_to :park
  validates :type, presence: true
  validates :description, presence: true
end
