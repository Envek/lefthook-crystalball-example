class Product < ApplicationRecord
  belongs_to :user

  has_many :listings

  validates :price,    numericality: { greater_than_or_equal_to: 0, allow_nil: true }
  validates :quantity, numericality: { greater_than_or_equal_to: 0, allow_nil: true, only_integer: true }
end
