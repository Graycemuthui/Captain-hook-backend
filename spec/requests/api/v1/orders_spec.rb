require 'rails_helper'

RSpec.describe 'Api::V1::Orders', type: :request do
  describe 'GET /api/v1/orders' do
    it 'returns all orders' do
      FactoryBot.create_list(:order, 1)

      get '/api/v1/orders'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe '[SHOW] /api/v1/orders/:id' do
    it 'shows a order' do
      order = FactoryBot.create(:order)

      get "/api/v1/orders/#{order.id}"

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['total_price']).to eq(order.total_price)
      expect(JSON.parse(response.body)['payment_method']).to eq(order.payment_method)
      expect(JSON.parse(response.body)['shipping_address']).to eq(order.shipping_address)
      expect(JSON.parse(response.body)['status']).to eq(order.status)
    end
  end

  describe '[CREATE] /api/v1/orders' do
    it 'creates a order' do
      order = FactoryBot.create(:order)

      post '/api/v1/orders',
           params: { order: { total_price: order.total_price, payment_method: order.payment_method,
                              shipping_address: order.shipping_address, status: order.status } }

      expect(response).to have_http_status(:created)
      expect(JSON.parse(response.body)['total_price']).to eq(order.total_price)
      expect(JSON.parse(response.body)['payment_method']).to eq(order.payment_method)
      expect(JSON.parse(response.body)['shipping_address']).to eq(order.shipping_address)
      expect(JSON.parse(response.body)['status']).to eq(order.status)
    end
  end
end
