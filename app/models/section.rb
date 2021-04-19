class Section < ApplicationRecord
  belongs_to :fridge
  has_many :items
end
