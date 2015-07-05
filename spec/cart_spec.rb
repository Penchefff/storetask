require 'cart'

RSpec.describe Cart do
  let(:item) { double('Item') }

  subject { described_class.new }

  it '#initialize' do
    item_collection = double('ItemCollection')
    allow(item_collection).to receive(:items).and_return([item, item])
    allow(item_collection).to receive(:count).and_return(2)
    expect(described_class.new(item_collection).count).to eq(2)
  end

  describe '#empty?' do
    it 'returns true when there is not items' do
      expect(subject.empty?).to be true
    end

    it 'returns false when there is more the 0 items' do
      3.times { subject.add(item) }
      expect(subject.empty?).to be false
    end
  end

  it '#add' do
    subject.add(item)
    expect(subject.count).to eq(1)
  end

  it '#count' do
    expect(subject.count).to eq(0)

    3.times { subject.add(item) }
    expect(subject.count).to eq(3)
  end

  it '#total_price' do
    allow(item).to receive(:price).and_return(25.00, 37.23, 68.55)
    3.times { subject.add(item) }
    expect(subject.total_price).to eq(130.78)
  end
end
