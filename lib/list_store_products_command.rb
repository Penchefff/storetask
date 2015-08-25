require_relative 'store_products'
require_relative 'product'

class ListStoreProductsCommand
  def initialize(app)
  end

  def self.msg
    'List all available products'
  end

  def self.code
    '2'
  end

  def execute
    fetch_products
    list_products
  end

  def fetch_products
    @store_products ||= StoreProducts.new
  end

  def list_products
    @store_products.products.each_with_index do |product, index|
      puts format('%s. Name: %s, Price: %s',index, product.name, product.price)
    end
  end
end
