class Customer
  attr_accessor :name, :email

  # def initialize(name = 'No name', email = 'email@example.com')
  def initialize(params)
    @name = params[:name]
    @email = params[:email]
  end
end
