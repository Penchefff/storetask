require_relative 'product'

class Item
  attr_accessor :product, :quantity

  # def initialize(product: Product.new, quantity: 1)
  def initialize(params)
    @product = params[:product]
    @quantity = params[:quantity]
  end

  def price
    @product.price * @quantity
  end
end
