class Skill < ApplicationRecord
  geocoded_by :skill_location
  after_validation :geocode, if: :will_save_change_to_skill_location?
  validates :name, :description, :price, :skill_location, :skill_type, presence: true 
  validates :description, length: {minimum: 50}
  belongs_to :user
  has_many :bookings
end
