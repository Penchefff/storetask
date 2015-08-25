require_relative 'customer'

class CreateCustomerCommand
  def initialize(app)
    @customer = app.customer
  end
  
  def self.msg
    'Create customer'
  end
  
  def self.code
    '1'
  end
  
  def execute
    set_customer_name
    set_customer_email
    show_customer_data
    true
  end
  
  private
  
  def set_customer_name
    puts 'Enter name: '
    @customer.name = gets.chomp
  end
  
  def set_customer_email
    puts 'Enter email: '
    @customer.email = gets.chomp
  end
  
  def show_customer_data
    puts format('Customer with name: %s, and email: %s, has been created', @customer.name, @customer.email)
  end
end