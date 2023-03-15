require 'rails_helper'

RSpec.describe 'Api::V1::OrderDetails', type: :request do
  describe 'GET /api/v1/order_details' do
    it 'returns all order_details' do
      FactoryBot.create_list(:order_detail, 1)

      get '/api/v1/order_details'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe '[SHOW] /api/v1/order_details/:id' do
    it 'shows a order_detail' do
      order_detail = FactoryBot.create(:order_detail)

      get "/api/v1/order_details/#{order_detail.id}"

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['order_id']).to eq(order_detail.order_id)
      expect(JSON.parse(response.body)['product_id']).to eq(order_detail.product_id)
      expect(JSON.parse(response.body)['quantity']).to eq(order_detail.quantity)
      expect(JSON.parse(response.body)['unit_price']).to eq(order_detail.unit_price)
    end
  end

  describe '[CREATE] /api/v1/order_details' do
    it 'creates a order_detail' do
      order_detail = FactoryBot.create(:order_detail)

      post '/api/v1/order_details',
           params: { order_detail: { order_id: order_detail.order_id, product_id: order_detail.product_id,
                                     quantity: order_detail.quantity, unit_price: order_detail.unit_price } }

      expect(response).to have_http_status(:created)
      expect(JSON.parse(response.body)['order_id']).to eq(order_detail.order_id)
      expect(JSON.parse(response.body)['product_id']).to eq(order_detail.product_id)
      expect(JSON.parse(response.body)['quantity']).to eq(order_detail.quantity)
      expect(JSON.parse(response.body)['unit_price']).to eq(order_detail.unit_price)
    end
  end
end
