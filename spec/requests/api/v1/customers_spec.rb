require 'rails_helper'

RSpec.describe 'Api::V1::Customers', type: :request do
  describe 'GET /api/v1/customers' do
    it 'returns all customers' do
      FactoryBot.create_list(:customer, 1)

      get '/api/v1/customers'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe '[SHOW] /api/v1customers:id' do
    it 'shows a customer' do
      customer = FactoryBot.create(:customer)

      get "/api/v1/customers/#{customer.id}"

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['first_name']).to eq(customer.first_name)
    end
  end

  describe '[POST] /api/v1/customers' do
    it 'creates a new customer' do
      customer_params = FactoryBot.attributes_for(:customer)

      post '/api/v1/customers', params: { customer: customer_params }

      expect(response).to have_http_status(:created)
      expect(JSON.parse(response.body)['first_name']).to eq(customer_params[:first_name])
    end
  end
end
