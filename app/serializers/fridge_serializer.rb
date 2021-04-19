class FridgeSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :sections
  has_many :items
end
