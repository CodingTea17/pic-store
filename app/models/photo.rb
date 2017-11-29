class Photo < ApplicationRecord
  validates :image, attachment_presence: true
  # validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
end
