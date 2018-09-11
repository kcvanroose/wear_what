class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :items
  
  class ItemSerializer < ActiveModel::Serializer
    attributes :id, :image, :color, :brand, :category, :outfits
  end
end
