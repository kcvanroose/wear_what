class ItemSerializer < ActiveModel::Serializer
  attributes :id, :image, :color, :brand, :category, :outfits
end
