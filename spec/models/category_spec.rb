require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'should validate the props' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
