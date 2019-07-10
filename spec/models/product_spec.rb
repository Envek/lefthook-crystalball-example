require 'rails_helper'

RSpec.describe Product, type: :model do
  subject(:product) { build :product }

  describe '#valid?' do
    it { is_expected.to be_valid }
  end
end
