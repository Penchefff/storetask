module Itemable
  attr_accessor :items

  def initialize
    self.items = []
  end

  def empty?
    items.empty?
  end

  def add(item)
    items << item
  end

  def <<(item)
    items << item
  end

  def delete(item)
    items.delete(item)
  end

  def count
    items.count
  end

  def total_price
    items.map(&:price).inject(&:+)
  end
end
