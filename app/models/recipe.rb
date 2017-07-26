class Recipe < ApplicationRecord
  belongs_to :city
  mount_uploader :image, ImageUploader
end
