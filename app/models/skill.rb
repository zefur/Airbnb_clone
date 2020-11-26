class Skill < ApplicationRecord
  validates :name, :description, :price, :skill_location, :skill_type, presence: true
  validates :description, length: {minimum: 50}
  validates :skill_type, inclusion: {in: %w[Driving DIY Coding Chores Teaching Gardening Craftwork "Pet care" "Baby care" Art]}
  belongs_to :user
  has_many :bookings

  has_many_attached :works

  #acts_as_taggable_on :skill_types



end
