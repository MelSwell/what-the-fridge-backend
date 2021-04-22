class FridgeSerializer < ActiveModel::Serializer
  attributes :id, :name, :class_type

  has_many :sections
  has_many :items
end
