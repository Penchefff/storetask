require_relative 'console_handler'

class Menu
  attr_accessor :commands

  def initialize(commands)
    @commands = commands.sort_by! { |command| command.code }
  end

  def show
    # ConsoleHandler.handle_string('kor', 5, 7)
    puts '--------------------------------------------------'
    puts 'Menu:'
    @commands.each do |cmd|
      ConsoleHandler.handle_string('%s, code: %s',cmd.msg, cmd.code)
      # puts format('%s, code: %s', cmd.msg, cmd.code)
    end
  end
end
