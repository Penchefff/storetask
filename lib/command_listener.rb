class CommandListener
  def initialize(commands, app)
    @commands = commands
    @app = app
  end

  def listen
    loop do
      input = user_input
      @commands.each do |cmd|
        if input == cmd.code
          cmd.new(@app).execute
        end
      end
    end
  end

  def user_input
    gets.chomp
  end
end
