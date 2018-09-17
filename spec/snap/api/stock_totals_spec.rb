RSpec.describe Snap::Api::StockTotals do
  describe '#index' do
    subject { described_class.index }

    it 'lists all stock totals', :vcr do
      expect(subject.code).to eq 200
    end
  end
end
