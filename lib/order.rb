require 'order_items'

class Order
  attr_accessor :customer, :items

  def initialize(customer:, items: OrderItems.new)
    @customer = customer
    @items = items
  end
end
