require 'rails_helper'

RSpec.describe Product, type: :model do
  subject(:product) { described_class.new user: User.new }

  describe '#valid?' do
    it { is_expected.to be_valid }

    it 'is invalid with negative price' do
      product.price = -4.2
      expect(product).not_to be_valid
    end

    it 'is valid with zero price' do
      product.price = 0.0
      expect(product).to be_valid
    end

    it 'is valid with positive price' do
      product.price = 4.2
      expect(product).to be_valid
    end

    it 'is invalid with negative quantity' do
      product.quantity = -4
      expect(product).not_to be_valid
    end

    it 'is valid with zero quantity (out of stock)' do
      product.quantity = 0
      expect(product).to be_valid
    end

    it 'is valid with positive quantity' do
      product.quantity = 4
      expect(product).to be_valid
    end

    it 'is invalid with fractional quantity' do
      product.quantity = 4.2
      expect(product).not_to be_valid
    end
  end
end
