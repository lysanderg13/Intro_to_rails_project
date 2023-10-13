class Fruit < ApplicationRecord
  belongs_to :character

  validates :name, :description, presence: true
  validates :name, uniqueness: true
end
