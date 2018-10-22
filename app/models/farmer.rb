class Farmer < ApplicationRecord
  mount_uploader :farmer_photo, PhotoUploader
end
