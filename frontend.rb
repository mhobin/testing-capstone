
require 'unirest'


response = Unirest.get("localhost:3000/products")

p response.body.save