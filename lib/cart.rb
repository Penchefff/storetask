require_relative 'cart_items'
require 'forwardable'

class Cart
  extend Forwardable

  attr_reader :items

  def_delegators :@items, :add, :empty?, :count, :total_price

  def initialize(items = CartItems.new)
    @items = items
  end
end
