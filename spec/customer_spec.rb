require 'customer'

RSpec.describe Customer do
  it { expect(subject).to respond_to(:name) }
  it { expect(subject).to respond_to(:name=) }

  it { expect(subject).to respond_to(:email) }
  it { expect(subject).to respond_to(:email=) }

  it '#initialize' do
    customer = described_class.new(name: 'Dian Penchev', email: 'dian.penchev@example.com')
    expect(customer.name).to eq('Dian Penchev')
    expect(customer.email).to eq('dian.penchev@example.com')
  end
end
