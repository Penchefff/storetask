require_relative 'command_factory'

class Menu
  def initialize
    @commands = CommandFactory.build
  end
  
  def show
    puts 'Menu:'
    @commands.each do |cmd|
      puts format('%s, code: %s', cmd.msg, cmd.code)
    end
  end
end