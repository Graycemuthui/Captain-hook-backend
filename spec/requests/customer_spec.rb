require 'rails_helper'

describe 'Customer API', type: :request do
  if 'returns all customers'
    get '/api/v1/customers'

    expect(response).to have_http_status(:success)
  end
end
