module Carts
  class ItemsController < ApplicationController
    def create
      find_cart
      item = @cart.items.create!(item_params)

      render json: ::CartSerializer.new(@cart).as_json
    end

    def update
      find_item

      if params[:quantity] == 0
        @item.delete
      else
        @item.update(item_params)
      end

      render json: ::CartSerializer.new(@item.cart).as_json
    end

    private

    def item_params
      params.permit(:product_id, :quantity)
    end

    def find_item
      @item = Item.find(params[:id])
    end

    def find_cart
      @cart = Cart.find_or_create_by(id: 1)
    end

    def update_params
      params.require(:item).permit(:quantity)
    end
  end
end
