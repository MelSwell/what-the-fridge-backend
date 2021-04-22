class ItemSerializer < ActiveModel::Serializer
  attributes :name, :image, :quantity, :date_added, :expiration_date, :section_id, :id, :trash

  belongs_to :section
end 
