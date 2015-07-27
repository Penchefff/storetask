class Product
  attr_accessor :name, :price

  # def initialize(name: 'No name', price: 0.00)
  def initialize(params)
    @name = params[:name]
    @price = params[:price]
  end
end
