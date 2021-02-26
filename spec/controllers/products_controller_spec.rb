# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'JSON body response contains expected data' do
      category = Category.create(name: 'Doces', order: 1)
      Product.create(name: 'Doce de leite', category: category, price: 3000)
      Product.create(name: 'Doce de banana', category: category, price: 3000)
      get :index

      json_response = JSON.parse(response.body)
      expect(json_response).to eq([
                                    {
                                      'name' => 'Doce de leite',
                                      'order' => 1,
                                      'image' => nil,
                                      'category' => 'Doces',
                                      'price' => 3000
                                    },
                                    {
                                      'name' => 'Doce de banana',
                                      'order' => 1,
                                      'image' => nil,
                                      'category' => 'Doces',
                                      'price' => 3000
                                    }
                                  ])
    end
  end
end
