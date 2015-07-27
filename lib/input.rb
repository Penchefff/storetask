require_relative 'customer'
require_relative 'cart'
require_relative 'product'
require_relative 'item'

# class Parser

puts('please enter name and email:')
name 		= gets.chomp
email 		= gets.chomp
customer 	= Customer.new(name: name, email: email)
items 		= CartItems.new()
# puts(cart.empty?)
# product1 = Product.new()
product1 = Product.new(name: 'Meat', price: 12.00)
product2 = Product.new(name: 'Chiroz', price: 312)
product3 = Product.new(name: 'asd', price: 312)
# product3 = Product.new('Midi', 123)
items.add(product1)
items.add(product2)
puts(items.total_price())


puts('please enter command: ')
puts('1 to add item')
puts('2 for items check')
puts('3 for items count')
puts('4 for items total price')
puts('6 to add items to cart')
puts('5 for exit')

asd = Item.new(product: product1, quantity: 3)


command = 0
loop do
  command = gets.chomp
  
  case command
  when '1'
    name = (gets.chomp)
    price = (gets.chomp)
    items.add(Product.new(name: name, price: price.to_f))
  when '2'
    puts(items.empty?)
  when '3'
    puts(items.count)
  when '4'
    puts(items.total_price())
  when '5'
    break
  when '6'
    cart = Cart.new(items)
  end
end
# end
