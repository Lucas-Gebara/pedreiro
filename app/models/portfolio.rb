class Portfolio < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user

  validates :description, presence: true

end
