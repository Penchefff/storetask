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
    @products = ListStoreProductsCommand.list_products
    product_index = product_index
    product_quantity = product_quantity
    @cart.cart_items.add(Item.new(product: @products[product_index], quantity: product_quantity))
  end

  def product_index
    ConsoleHandler.print('Please enter product index from the list: ')
    gets.chomp.to_i
  end

  def product_quantity
    ConsoleHandler.print('Please product quantity: ')
    gets.chomp.to_i
  end
end
