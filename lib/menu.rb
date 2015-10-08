require_relative 'console_handler'

class Menu
  attr_accessor :commands

  def initialize(commands)
    @commands = commands.sort_by!(&:code)
  end

  def show
    ConsoleHandler.print('Menu:')
    @commands.each do |cmd|
      ConsoleHandler.print_format('%s, code: %s', cmd.msg, cmd.code)
    end
  end
end
