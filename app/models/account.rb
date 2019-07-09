class Account < ApplicationRecord
  has_many :products

  validates :login, presence: true
end
