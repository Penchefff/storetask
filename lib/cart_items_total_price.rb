class CartItemsTotalPrice
  def initialize(app)
    @cart = app.cart
  end

  def self.msg
    'Shows total price of cart items'
  end

  def self.code
    '4'
  end

  def execute
    ConsoleHandler.print_format('%s is current total price', total_price)
  end

  def total_price
    @total = 0
    @total = @cart.cart_items.total_price if @cart.cart_items.total_price
    @total
  end
end
