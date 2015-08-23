class Customer
  attr_accessor :name, :email

  def initialize(name = 'No name', email = 'email@example.com')
    @name = name
    @email = email
  end
end
