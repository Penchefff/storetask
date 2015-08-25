require_relative 'product'

class StoreProducts
  def initialize
    @products_list = []
    @products_list.push(Product.new(name = 'Bahur', price = 10))
    @products_list.push(Product.new(name = 'Chiroz', price = 20))
    @products_list.push(Product.new(name = 'Kambi', price = 30))
  end
  
  def products
    @products_list
  end
end