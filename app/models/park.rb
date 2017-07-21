class Park < ApplicationRecord
  has_many :facilities, dependent: :destroy
  validates :name, presence: true
  validates :category, presence: true
  validates :location, presence: true
end
