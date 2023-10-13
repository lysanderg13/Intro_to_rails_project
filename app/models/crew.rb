class Crew < ApplicationRecord
  has_many :characters

  validates :name, :number_of_members, presence: true
  validates :name, uniqueness: true
end
