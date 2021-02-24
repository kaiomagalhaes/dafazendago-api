# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    categories = Category.all
    json = categories.map do |category|
      {
        name: category.name,
        order: category.order
      }
    end

    render json: json
  end
end
