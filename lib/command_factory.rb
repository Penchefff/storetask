require_relative 'create_customer_command'
require_relative 'exit_command'

class CommandFactory
  def self.build
    [ CreateCustomerCommand, ExitCommand ]
  end
end