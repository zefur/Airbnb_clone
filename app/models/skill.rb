class Skill < ApplicationRecord
  validates :name, :description, :price, :skill_location, :skill_type, presence: true 
  validates :description, length: {minimum: 50}
  belongs_to :user
end
