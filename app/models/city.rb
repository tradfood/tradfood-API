class City < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :recipes
end
