require 'rails_helper'

RSpec.describe 'Api::V1::Products', type: :request do
  describe 'GET /api/v1/products' do
    it 'returns all products' do
      FactoryBot.create_list(:product, 1)

      get '/api/v1/products'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end

    describe '[SHOW] /api/v1/products/:id' do
      it 'shows a product' do
        product = FactoryBot.create(:product)

        get "/api/v1/products/#{product.id}"

        expect(response).to have_http_status(:success)
        expect(JSON.parse(response.body)['name']).to eq(product.name)
        expect(JSON.parse(response.body)['price']).to eq(product.price)
      end
    end
  end

  describe '[CREATE] /api/v1/products' do
    it 'creates a product' do
      product = FactoryBot.create(:product)

      post '/api/v1/products',
           params: { product: { name: product.name, price: product.price, description: product.description,
                                stock: product.stock, image_url: product.image_url, category: product.category } }

      expect(response).to have_http_status(:created)
      expect(JSON.parse(response.body)['name']).to eq(product.name)
      expect(JSON.parse(response.body)['price']).to eq(product.price)
    end
  end
end
