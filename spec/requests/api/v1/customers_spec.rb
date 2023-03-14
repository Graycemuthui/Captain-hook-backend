require 'rails_helper'

RSpec.describe 'Api::V1::Customers', type: :request do
  it 'returns all books' do
    FactoryBot.create_list(:customer, 1)

    get '/api/v1/customers'

    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body).size).to eq(1)
  end
end
