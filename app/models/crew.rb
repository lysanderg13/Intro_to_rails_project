class Crew < ApplicationRecord
  has_many :characters

  validates :name, :roman_name, :status, presence: true
  validates :name, :roman_name, uniqueness: true
end
