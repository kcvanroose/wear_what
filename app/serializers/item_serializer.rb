class ItemSerializer < ActiveModel::Serializer
  attributes :id, :image, :color, :brand
  belongs_to :user
  belongs_to :category
  has_many :outfits, through: :outfit_items
end
