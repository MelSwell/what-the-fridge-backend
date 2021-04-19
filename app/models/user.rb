class User < ApplicationRecord
  has_many :fridges

  validates :email, uniqueness: true
end
