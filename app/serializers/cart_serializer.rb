class CartSerializer < ActiveModel::Serializer
  attributes :items

  def items
    ActiveModel::SerializableResource.new(object.items.includes(:product), each_serializer: ItemSerializer)
  end

  def discounts
    ActiveModel::SerializableResource.new(object.discounts, each_serializer: DiscountSerializer)
  end
end
