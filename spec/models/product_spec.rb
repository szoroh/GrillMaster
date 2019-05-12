require 'rails_helper'

RSpec.describe Product, type: :model do
  context "product associations" do
    it { should have_many(:items) }
  end

  context "Name parameter validations" do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  context "Price parameter validations" do
    it do
      should validate_numericality_of(:price).is_greater_than_or_equal_to(0)
    end
  end
end
