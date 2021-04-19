class SectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :fridge_id

  has_many :items, serializer: FridgeItemSerializer
end 