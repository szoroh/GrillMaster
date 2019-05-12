require 'rails_helper'

RSpec.describe 'Cart item request' do

  #TODO
  describe 'POST /cart/items' do
    context 'with defined quantity' do
      it 'returns created item in the cart' do
        post '/cart/items', params: { product_id: 1, quantity: 2}

        response_json = JSON.parse(response.body)
        expect(response_json.dig('cart', 'item', '0', 'quantity')).to eq(2)
      end
    end

    context 'with default quantity' do
      it 'returns created item' do
        post '/cart/items', params: { product_id: 2 }

        response_json = JSON.parse(response.body)
        expect(response_json.dig('cart', 'item', '0', 'quantity')).to eq(1)
      end
    end
  end
end
