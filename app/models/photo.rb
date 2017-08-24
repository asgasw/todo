class Photo < ApplicationRecord
  belongs_to :person
  mount_uploader :image, ImageUploader
end
