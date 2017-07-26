class City < ApplicationRecord
  mount_uploader :image, ImageUploader
end
