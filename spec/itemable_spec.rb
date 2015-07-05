require 'itemable'

RSpec.describe Itemable do
  ItemCollection = Class.new { include Itemable } # rubocop:disable RSpec/DescribedClass

  subject { ItemCollection.new }

  let(:item) { double('Item') }

  describe '#empty?' do
    it 'returns true when the collection is empty' do
      expect(subject.empty?).to be true
    end

    it 'returns false when the collection is not empty' do
      subject << item
      expect(subject.empty?).to be false
    end
  end

  describe 'adds item to collection' do
    it '#add' do
      subject.add(item)
      expect(subject.count).to eq(1)
    end

    it '#<<' do
      subject << item
      expect(subject.count).to eq(1)
    end
  end

  it '#remove' do
    subject << item
    subject << double('Item')
    subject.delete(item)
    expect(subject.count).to eq(1)
  end

  it '#count' do
    expect(subject.count).to eq(0)

    subject << item
    subject << item

    expect(subject.count).to eq(2)
  end

  it '#total_price' do
    allow(item).to receive(:price).and_return(25.00, 37.23, 68.55)
    3.times { subject.add(item) }
    expect(subject.total_price).to eq(130.78)
  end
end
