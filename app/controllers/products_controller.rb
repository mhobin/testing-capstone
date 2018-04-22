class ProductsController < ApplicationController
  def callback
    render json: {message: "testing"}
  end
end
