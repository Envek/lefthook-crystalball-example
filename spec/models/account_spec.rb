require 'rails_helper'

RSpec.describe Account, type: :model do
  subject(:account) { described_class.new login: 'itsme' }

  describe '#valid?' do
    it { is_expected.to be_valid }

    it 'is invalid without login' do
      account.login = nil
      expect(account).not_to be_valid
    end
  end
end
