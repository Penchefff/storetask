require_relative 'store_products'
require_relative 'product'

class ListStoreProductsCommand
  def initialize(_)
  end

  def self.msg
    'List all available products'
  end

  def self.code
    '2'
  end

  def execute
    ListStoreProductsCommand.fetch_products
    ListStoreProductsCommand.list_products
  end

  def self.fetch_products
    @store_products ||= StoreProducts.new
  end

  def self.list_products
    @store_products.products.each_with_index do |product, index|
      ConsoleHandler.handle_string('%s. Name: %s, Price: %s', index, product.name, product.price)
    end
  end
end
