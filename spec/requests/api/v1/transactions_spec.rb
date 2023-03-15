require 'rails_helper'

RSpec.describe 'Api::V1::Transactions', type: :request do
  describe 'GET /api/v1/transactions' do
    it 'returns all transactions' do
      FactoryBot.create_list(:transaction, 1)

      get '/api/v1/transactions'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end

    describe '[SHOW] /api/v1/transactions/:id' do
      it 'shows a transaction' do
        transaction = FactoryBot.create(:transaction)

        get "/api/v1/transactions/#{transaction.id}"

        expect(response).to have_http_status(:success)
        expect(JSON.parse(response.body)['amount']).to eq(transaction.amount)
      end
    end

    describe '[CREATE] /api/v1/transactions' do
      it 'creates a transaction' do
        transaction = FactoryBot.create(:transaction)

        post '/api/v1/transactions',
             params: { transaction: { name: transaction.name, description: transaction.description,
                                      amount: transaction.amount, payment_status: transaction.payment_status } }

        expect(response).to have_http_status(:created)
        expect(JSON.parse(response.body)['amount']).to eq(transaction.amount)
      end
    end
  end
end
