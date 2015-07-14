require_relative 'customer'
require_relative 'cart'

# class Parser

puts('please enter name and email:')
name = gets.chomp
email = gets.chomp
customer = Customer.new(name, email)
cart = Cart.new(CartItems.new())
puts(customer.name, customer.email)
puts('please enter commeand: ')
puts('1 for')
puts('2 for')
puts('3 for')
puts('4 for ')
puts('5 for exit')
command = 0
loop do
  command = gets.chomp
  break if command == '5'
  puts(command)
end
# end
