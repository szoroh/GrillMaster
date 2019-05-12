require 'rails_helper'

RSpec.describe Cart, type: :model do
  it { should have_many(:items) }
  it { should have_many(:discounts) }
end
