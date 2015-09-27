class ConsoleHandler
  def self.handle_string(*p)
    puts format(p[0], p[1], p[2])
  end
end