class Character < ApplicationRecord
  belongs_to :crew
  belongs_to :fruit

  validates :name
end
