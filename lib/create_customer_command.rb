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
    ConsoleHandler.print('Enter name: ')
    @customer.name = gets.chomp
  end

  def set_customer_email
    ConsoleHandler.print('Enter email: ')
    loop do
      @email = gets.chomp
      break if valid_email?(@email)
      ConsoleHandler.print('Please input valid email: ')
    end
    @customer.email = @email
  end

  def show_customer_data
    ConsoleHandler.print_format('Customer with name: %s, and email: %s, has been created', @customer.name, @customer.email)
  end

  def valid_email?(email)
    (email =~ /\A\S+@.+\.\S+\z/)
  end
end
