class Character < ApplicationRecord
  belongs_to :crew
  belongs_to :fruit

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :bounty, numericality: { only_integers: true }
end
