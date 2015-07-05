require 'item'

RSpec.describe Item do
  let(:product) do
    instance_double('Product', name: 'Asteroid EP', price: 300.00)
  end

  it { expect(subject).to respond_to(:product) }
  it { expect(subject).to respond_to(:product=) }

  it { expect(subject).to respond_to(:quantity) }
  it { expect(subject).to respond_to(:quantity=) }

  it '#initialize' do
    test_item = described_class.new(product: product, quantity: 3)
    expect(test_item.product).to eq(product)
    expect(test_item.quantity).to eq(3)
  end

  it '#price' do
    subject.product = product
    subject.quantity = 3
    expect(subject.price).to eq(900.00)
  end
end
