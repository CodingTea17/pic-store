class Photo < ApplicationRecord
  has_attached_file :image
  validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
  belongs_to :user
end
