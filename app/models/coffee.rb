class Coffee < ApplicationRecord
  belongs_to :farmer, dependent: :destroy

  mount_uploader :flavor1_image, PhotoUploader
  mount_uploader :flavor2_image, PhotoUploader
  mount_uploader :flavor3_image, PhotoUploader
end
