class Product < ApplicationRecord
  class Variation < ApplicationRecord
    belongs_to :product, inverse_of: :variations

    validates :price,    numericality: { greater_than_or_equal_to: 0, allow_nil: true }
    validates :quantity, numericality: { greater_than_or_equal_to: 0, allow_nil: true, only_integer: true }
  end
end
