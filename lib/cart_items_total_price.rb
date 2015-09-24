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
    puts format('%s is current total price', total_price)
  end

  def total_price
    total = 0
    if @cart.items.total_price
      total = @cart.items.total_price
    end
    total
  end
end
