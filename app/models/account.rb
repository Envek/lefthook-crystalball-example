class Account < ApplicationRecord
  belongs_to :user

  has_many :listings

  validates :login, presence: true
end
