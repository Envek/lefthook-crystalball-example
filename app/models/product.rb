class Product < ApplicationRecord
  belongs_to :account

  has_many :variations, class_name: 'Product::Variation', dependent: :destroy
  has_many :listings
end
