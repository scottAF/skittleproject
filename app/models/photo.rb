class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :place_id
  mount_uploader :picture, PictureUploader
end
