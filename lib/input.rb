require_relative 'customer'
require_relative 'cart'
require_relative 'product'
require_relative 'item'
require_relative 'order'

puts('please enter name and email:')
name 		= gets.chomp
email 		= gets.chomp
customer 	= Customer.new(name: name, email: email)

meat = Product.new(name: 'Meat', price: 12.00)
chiroz = Product.new(name: 'Chiroz', price: 312)
bahur = Product.new(name: 'Bahur', price: 312)

products_list = [meat, chiroz, bahur]

cart = Cart.new(CartItems.new)

cart.add(Item.new(product: meat, quantity: 5))
cart.add(Item.new(product: chiroz, quantity: 5))
cart.add(Item.new(product: bahur, quantity: 5))

def show_menu
  puts('please enter command:
  1 to list all available products
  2 to add product to cart
  3 for cart emptyness check
  4 for cart items count
  5 for cart items total price
  6 to create order
  7 for exit')
end

def list_products(list)
  list.each_with_index do |product, index|
    puts format('%s. Name: %s, Price: %s', index, product.name, product.price)
  end
end

command = 0
loop do
  show_menu
  command = gets.chomp

  case command
  when '1'
    list_products(products_list)
  when '2'
    list_products(products_list)
    puts('Enter product index to add: ')
    product = products_list[(gets.chomp).to_i]
    puts('Enter quantity: ')
    quantity = (gets.chomp).to_f
    cart.items.add(Item.new(product: product, quantity: quantity))
  when '3'
    if cart.items.empty?
      puts('Cart is empty')
    else
      puts('Cart is not empty')
    end
  when '4'
    puts format('%s items are currently in the cart', cart.items.count)
  when '5'
    puts format('%s is current total price', cart.items.total_price)
  when '6'
    Order.new(customer: customer, items: cart.items)
  when '7'
    break
  end
end
