require_relative 'cart_items'
require 'forwardable'

class Cart
  extend Forwardable

  attr_reader :cart_items

  def_delegators :@cart_items, :add, :empty?, :count, :total_price

  def initialize(cart_items = CartItems.new)
    @cart_items = cart_items
  end

  def items
    @cart_items.items
  end
end
