# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    products = Product.all
    json = products.map do |product|
      {
        name: product.name,
        price: product.price,
        category: product.category.name,
        Order: product.category.order,
        image: product.image.attached? ? url_for(product.image): nil
      }
    end

    render json: json
  end
end
