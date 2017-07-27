class City < ApplicationRecord
  mount_uploader :image, ImageUploader
  before_save :name_downcase!
end
