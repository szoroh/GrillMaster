class CartSerializer < ActiveModel::Serializer
  attributes :items

  def items
    ActiveModel::SerializableResource.new(object.items.includes(:product), each_serializer: ItemSerializer)
  end
end
