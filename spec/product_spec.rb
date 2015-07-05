require 'product'

RSpec.describe Product do
  it { expect(subject).to respond_to(:name) }
  it { expect(subject).to respond_to(:name=) }

  it { expect(subject).to respond_to(:price) }
  it { expect(subject).to respond_to(:price=) }

  it 'expects price to be Float' do
    expect(subject.price).to be_instance_of(Float)
  end

  it '#initialize' do
    product = described_class.new(name: 'Unknown', price: 301.00)
    expect(product.name).to eq('Unknown')
    expect(product.price).to eq(301.00)
  end
end
