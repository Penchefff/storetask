require_relative 'create_customer_command'
require_relative 'exit_command'
require_relative 'list_store_products_command'

class CommandFactory
  def self.build
    [ CreateCustomerCommand, ExitCommand, ListStoreProductsCommand ]
  end
end