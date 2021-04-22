class Section < ApplicationRecord
  belongs_to :fridge
  has_many :items
  # , -> {order('expiration_date ASC')}

  def items_by_expiry
    items.order("expiration_date ASC")
  end

  def items_by_alpha
    items.sort_by{|item1| item1.name.downcase }
  end

  def class_type
    "section"
  end
end
