class Review < ApplicationRecord
  belongs_to :user

  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, presence: true
  # validates :description, presence: true
end
