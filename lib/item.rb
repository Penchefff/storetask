require 'product'

class Item
  attr_accessor :product, :quantity

  def initialize(product: Product.new, quantity: 1)
    @product = product
    @quantity = quantity
  end

  def price
    @product.price * @quantity
  end
end
