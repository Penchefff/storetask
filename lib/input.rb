require_relative 'customer'
require_relative 'cart'
require_relative 'product'
require_relative 'item'
require_relative 'order'

# class Parser

puts('please enter name and email:')
name 		= gets.chomp
email 		= gets.chomp
customer 	= Customer.new(name: name, email: email)

product1 = Product.new(name: 'Meat', price: 12.00)
product2 = Product.new(name: 'Chiroz', price: 312)
product3 = Product.new(name: 'Bahur', price: 312)


cart = Cart.new(asd = CartItems.new())

cart.add(Item.new(product: product1, quantity: 5))
cart.add(Item.new(product: product2, quantity: 5))
cart.add(Item.new(product: product3, quantity: 5))

order = Order.new(customer: customer, items: cart.items)

puts('-------------')
puts(order.items.total_price)
puts('-------------')


puts('please enter command: )
1 to list all products
1 to add item
2 for items check
3 for items count
4 for items total price
6 to add items to cart
5 for exit')

asd = Item.new(product: product1, quantity: 3)


command = 0
loop do
  command = gets.chomp
  
  case command
  when '1'
    puts('list items')
  when '2'
    name = (gets.chomp)
    price = (gets.chomp)
    items.add(Product.new(name: name, price: price.to_f))
  when '3'
    puts(items.empty?)
  when '4'
    puts(cart.items.count)
  when '5'
    puts(cart.items.total_price())
  when '6'
    break
  when '7'
    cart = Cart.new(items)
  end
end
# end
