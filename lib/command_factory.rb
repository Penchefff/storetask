require_relative 'create_customer_command'
require_relative 'exit_command'
require_relative 'list_store_products_command'
require_relative 'add_product_to_cart_command'
require_relative 'cart_items_total_price'
require_relative 'list_cart_items_command'

class CommandFactory
  def self.build
    [CreateCustomerCommand, ExitCommand, ListStoreProductsCommand, AddProductToCartCommand, CartItemsTotalPrice, ListCartItemsCommand]
  end
end
