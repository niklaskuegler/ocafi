class Coffee < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :farmer

  mount_uploader :flavor1_image, PhotoUploader
  mount_uploader :flavor2_image, PhotoUploader
  mount_uploader :flavor3_image, PhotoUploader

  has_many :order_items

  default_scope { where(active: true) }
end
