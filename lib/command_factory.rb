require_relative 'create_customer_command'

class CommandFactory
  def self.build
    [ CreateCustomerCommand ]
  end
end