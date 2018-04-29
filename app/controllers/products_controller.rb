class ProductsController < ApplicationController
  def index
    response = Unirest.get("https://api.bestbuy.com/v1/products(type=hardGood)?format=json&show=sku,name,salePrice,image,freeShipping&pageSize=100&cursorMark=*&apiKey=#{ENV['API_KEY']}")
    render json: response.body
  end
end
