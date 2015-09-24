class CommandListener
  def initialize(commands, app)
    @commands = commands
    @app = app
  end

  def listen
    loop do
      input = user_input
      @commands.each do |cmd|
        cmd.new(@app).execute if input == cmd.code
      end
    end
  end

  def user_input
    gets.chomp
  end
end
