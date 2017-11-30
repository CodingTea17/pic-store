class Photo < ApplicationRecord
  belongs_to :user

  has_attached_file :image
  validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
  
  validates :title, :presence => true
end
