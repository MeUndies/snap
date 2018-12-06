RSpec.describe Snap::Api::StockTotals do
  describe '#index' do
    subject { described_class.index }

    it 'lists all stock totals', :vcr do
      expect(subject.code).to eq 200
    end
  end

  describe '#find' do
    subject { described_class.find(sku: sku) }

    let(:sku) { 'B1000' }

    it 'lists the stock total', :vcr do
      expect(subject.code).to eq 200
      expect(subject.hydrate.class).to eq Snap::Models::StockTotalList
    end
  end
end
