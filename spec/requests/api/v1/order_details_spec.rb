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
end
