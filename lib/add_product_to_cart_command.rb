require_relative 'store_products'
require_relative 'item'

class AddProductToCartCommand
  def initialize(app)
    @cart = app.cart
  end

  def self.msg
    'Add product to cart'
  end

  def self.code
    '3'
  end

  def execute
    ListStoreProductsCommand.fetch_products
    ListStoreProductsCommand.list_products
    @cart.items.add(Item.new(product: Product.new(name: 'test', price: 12.00), quantity: 45))
    @cart.items.add(Item.new(product: Product.new(name: 'test1', price: 12.00), quantity: 45))
    @cart.items.add(Item.new(product: Product.new(name: 'test2', price: 12.00), quantity: 45))
    # puts ListStoreProductsCommand.fetch_products
  end
end