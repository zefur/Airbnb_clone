class Skill < ApplicationRecord

  validates :name, :description, :price, :skill_location, presence: true

  geocoded_by :skill_location
  after_validation :geocode, if: :will_save_change_to_skill_location?
  
  validates :description, length: {minimum: 50}
  # validates :tag, inclusion: {in: %w[Driving DIY Coding Chores Teaching Gardening Craftwork Pet\ care Baby\ care Art]}
  belongs_to :user
  has_many :bookings
  has_one_attached :avatar
  has_many_attached :works

  acts_as_taggable_on :tags



end
