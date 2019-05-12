class DiscountSerializer < ActiveModel::Serializer
  attributes :kind, :name, :product_ids
  attribute :price, if: :discount_set?
  attribute :count, if: :discount_extra?

  def discount_set?
    object.kind == "set"
  end

  def discount_extra?
    object.kind == "extra"
  end
end
