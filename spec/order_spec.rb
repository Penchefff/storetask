require 'order'

RSpec.describe Order do
  let(:customer) { double('Customer') }
  let(:items) { double('Items') }

  subject do
    described_class.new(customer: customer, items: items)
  end

  it { expect(subject).to respond_to(:customer) }
  it { expect(subject).to respond_to(:customer=) }

  it { expect(subject).to respond_to(:items) }
  it { expect(subject).to respond_to(:items=) }
end
