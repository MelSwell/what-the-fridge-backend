class SectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :fridge_id, :class_type
  # , :items_by_expiry, :items_by_alpha

  has_many :items


end 