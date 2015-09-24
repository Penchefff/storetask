class ExitCommand
  def initialize(_)
  end

  def self.msg
    'Exit app'
  end

  def self.code
    '7'
  end

  def execute
    exit
  end
end
