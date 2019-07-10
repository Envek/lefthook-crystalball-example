require 'rails_helper'

RSpec.describe Product, type: :model do
  subject(:product) { described_class.new account: Account.new }

  describe '#valid?' do
    it { is_expected.to be_valid }
  end
end
