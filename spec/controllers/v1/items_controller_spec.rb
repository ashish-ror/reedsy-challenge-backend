require 'rails_helper'

RSpec.describe Api::V1::ItemsController, type: :request do
  describe '#index' do
    let(:mug) { Item.create(code: 'MUG', name: 'Reedsy Mug', price: 6.00) }
    let(:tshirt) { Item.create(code: 'TSHIRT', name: 'Reedsy T-Shirt', price: 15.00) }
    let(:hoodie) { Item.create(code: 'HOODIE', name: 'Reedsy Hoodie', price: 20.00) }
    let(:response_json) { [] }

    before do
      [mug, tshirt, hoodie].each do |item|
        response_json << {
          'code' => item.code,
          'name' => item.name,
          'price' => item.price.to_f,
        }
      end
    end

    it 'should return items sucessfully' do
      get '/api/v1/items'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)).to eq response_json
    end
  end

  describe '#update' do
    let(:hoodie) { Item.find_by(code: 'HOODIE') }
    let(:updated_price) { 30.00 }
    let(:params) do
      {
        price: updated_price
      }
    end

    it 'should return with updated item' do
      patch "/api/v1/items/#{hoodie.code}", params: params

      expect(response).to have_http_status(:success)
      hoodie.reload
      expect(hoodie.price).to eq 30.00
    end
  end

  describe '#get_price' do
    Discount.create(code: 'TSHIRT', lower_limit: 3, discount: 30)
    Discount.create(code: 'MUG', lower_limit: 150, discount: 30)

    let(:data) do 
      { 'items' => "[ { code: 'MUG', quantity: 200 }, { code: 'TSHIRT', quantity: 4 }, { code: 'HOODIE', quantity: 1 } ]" }
    end

    it 'should return with discount if applicable' do
      get '/api/v1/items/price', params: data

      expect(response).to have_http_status(:success)
      expect(response.body).to eq "Total: 902.0"
    end
  end

  
end
