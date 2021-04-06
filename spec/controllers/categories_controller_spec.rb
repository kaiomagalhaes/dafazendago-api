# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'JSON body response contains expected data' do
      Category.create(name: 'Doces', order: 1)
      Category.create(name: 'Queijos', order: 2)
      get :index

      json_response = JSON.parse(response.body)
      expect(json_response).to eq([
                                    {
                                      'name' => 'Doces',
                                      'order' => 1
                                    },
                                    {
                                      'name' => 'Queijos',
                                      'order' => 2
                                    }
                                  ])
    end
  end
end
