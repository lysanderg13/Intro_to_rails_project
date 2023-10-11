class Fruit < ApplicationRecord
  validates :name, :roman_name, :type, :description, presence: true
  validates :name, :roman_name, uniqueness: true
end
