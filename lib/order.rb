require_relative 'order_items'

class Order
  attr_accessor :customer, :items

  # def initialize(customer:, items: OrderItems.new)
  def initialize(params)
    @customer = params[:customer]
    @items = params[:items]
  end
end
