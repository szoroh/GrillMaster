class Cart < ApplicationRecord
  has_many :items
  has_many :discounts
end
