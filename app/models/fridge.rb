class Fridge < ApplicationRecord
  belongs_to :user
  has_many :sections
  has_many :items, through: :sections

  def class_type
    "fridge"
  end
end
