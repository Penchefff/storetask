
class ListCartItemsCommand
  def initialize(app)
    @cart = app.cart
  end

  def self.msg
    'List all cart items '
  end

  def self.code
    '5'
  end

  def execute
    @cart.items.each do |item|
      ConsoleHandler.handle_string('Name: %s, quantity: %s, price: %s', item.name, item.quantity, item.price)
    end
  end
end
