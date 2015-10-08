class ConsoleHandler
  def self.print(str)
    puts str
  end

  def self.print_format(str, *params)
    puts format(str, *params)
  end
end
