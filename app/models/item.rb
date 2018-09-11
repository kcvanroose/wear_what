class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :outfit_items
  has_many :outfits, through: :outfit_items
  mount_uploader :image, ImageUploader
end
