class Menu
  attr_accessor :commands
  
  def initialize(commands)
    @commands = commands.sort_by! {|command| command.code}
  end
  
  def show
    puts 'Menu:'
    @commands.each do |cmd|
      puts format('%s, code: %s', cmd.msg, cmd.code)
    end
  end
end