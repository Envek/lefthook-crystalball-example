require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:account) { described_class.new email: 'itsme@example.net' }

  describe '#valid?' do
    it { is_expected.to be_valid }
  end
end
