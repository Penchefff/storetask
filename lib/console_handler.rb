class ConsoleHandler
  def self.print(str)
    puts str
  end

  def self.handle_string(str, *params)
    puts format(str, *params)
  end
end
