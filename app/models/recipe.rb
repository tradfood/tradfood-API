class Recipe < ApplicationRecord
  belongs_to :city
  mount_uploader :image, ImageUploader
  before_save :name_downcase!
end
