require_relative 'customer'

class Parser
  name = gets.chomp
  ivan = Customer.new(name, 'asd')
  petkan = Customer.new()
  puts(ivan.name)
  puts(petkan.name)
end
