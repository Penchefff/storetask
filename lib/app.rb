require_relative 'menu'
require_relative 'command_factory'
require_relative 'command_listener'

class App
  attr_accessor :customer
  
  def initialize
    @commands = CommandFactory.build
    @customer = Customer.new
  end

  def run
    show_menu
    CommandListener.new(@commands, self).listen
  end
  
  private
  
  def show_menu
    menu.show
  end
  
  def menu
    @menu ||= Menu.new(@commands)
  end
end

App.new.run