require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { create(:item) }
  let(:cart) { create(:cart) }
  let(:product) { crate(:product) }

  context "Item associations" do
    it { should belong_to(:product) }
    it { should belong_to(:cart) }
  end

  it do
    should validate_numericality_of(:quantity).is_greater_than_or_equal_to(1)
  end
end
