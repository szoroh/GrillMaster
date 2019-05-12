module Carts
  class DiscountsController < ApplicationController
    def create
      find_cart
      discount = @cart.discounts.create!(discount_params)

      render json: ::CartSerializer.new(@cart).as_json
    end

    def discount_params
      params.permit(:kind, :name, :count, :price, product_ids: [])
    end

    def find_cart
      @cart = Cart.find_or_create_by(id: 1)
    end
  end
end
