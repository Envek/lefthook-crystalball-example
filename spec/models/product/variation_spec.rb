require 'rails_helper'

RSpec.describe Product::Variation, type: :model do
  subject(:variation) do
    described_class.new product: Product.new(account: Account.new)
  end

  describe '#valid?' do
    it { is_expected.to be_valid }

    it 'is invalid with negative price' do
      variation.price = -4.2
      expect(variation).not_to be_valid
    end

    it 'is valid with zero price' do
      variation.price = 0.0
      expect(variation).to be_valid
    end

    it 'is valid with positive price' do
      variation.price = 4.2
      expect(variation).to be_valid
    end

    it 'is invalid with negative quantity' do
      variation.quantity = -4
      expect(variation).not_to be_valid
    end

    it 'is valid with zero quantity (out of stock)' do
      variation.quantity = 0
      expect(variation).to be_valid
    end

    it 'is valid with positive quantity' do
      variation.quantity = 4
      expect(variation).to be_valid
    end

    it 'is invalid with fractional quantity' do
      variation.quantity = 4.2
      expect(variation).not_to be_valid
    end
  end
end
