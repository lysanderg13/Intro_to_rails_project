class Character < ApplicationRecord
  belongs_to :crew

  validates :name, presence: true
  validates :name, uniqueness: true
end
