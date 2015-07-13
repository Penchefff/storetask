require_relative 'customer'

# class Parser

puts('please enter name and email:')
name = gets.chomp
email = gets.chomp
ivan = Customer.new(name, email)
puts(ivan.name, ivan.email)
print('please enter commeand, 1, 2, 3, 4, 5 for exit')
command = 0
loop do
  command = gets.chomp
  puts(command)
  break if command == '5'
end
# end
