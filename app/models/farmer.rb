class Farmer < ApplicationRecord

  mount_uploader :farmer_photo, PhotoUploader
  mount_uploader :farm_landscape1, PhotoUploader
  mount_uploader :farm_landscape2, PhotoUploader
  mount_uploader :farm_landscape3, PhotoUploader
  mount_uploader :farm_landscape4, PhotoUploader
  mount_uploader :farm_landscape5, PhotoUploader
  mount_uploader :farm_landscape6, PhotoUploader
  mount_uploader :farm_landscape7, PhotoUploader
  mount_uploader :farm_landscape8, PhotoUploader
  mount_uploader :farm_landscape9, PhotoUploader
  mount_uploader :farm_landscape10, PhotoUploader

  has_many :coffees, dependent: :destroy
end
