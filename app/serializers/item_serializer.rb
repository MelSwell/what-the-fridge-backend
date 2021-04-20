class ItemSerializer < ActiveModel::Serializer
  attributes :name, :image, :quantity, :date_added, :expiration_date, :section_id, :id

  belongs_to :section
end 
