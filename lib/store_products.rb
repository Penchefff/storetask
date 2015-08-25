require_relative 'product'

class StoreProducts
  def initialize
    @products_list = []
    @products_list.push(Product.new('Bahur', 10))
    @products_list.push(Product.new('Chiroz', 20))
    @products_list.push(Product.new('Kambi', 30))
  end

  def products
    @products_list
  end
end
