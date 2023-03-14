require 'rails_helper'

describe 'Customer API', type: :request do
  it 'returns all customers' do
    FactoryBot.build_list(:customer, 2)
    get '/api/v1/customers'

    expect(response).to have_http_status(200)
    expect(JSON.parse(response.body).size).to eq(2)
  end
end
