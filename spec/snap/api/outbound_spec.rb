RSpec.describe Snap::Api::Outbound do
  describe '#index' do
    subject { described_class.index(top: 1) }

    it 'lists outbound events', :vcr do
      expect(subject.count).to eq 1
      expect(subject.hydrate.first.XDoc).to eq 'OUA2662425'
      expect(subject.hydrate.first.Key).to eq(
        'Shipment' => 'R462713702',
        'Stage' => '15'
      )
    end
  end

  describe '#acknowledge' do
    subject { described_class.acknowledge(id: id) }

    let(:id) { 'OUA2662425' }

    it 'acknowledges the event', :vcr do
      expect(subject.code).to eq 200
    end
  end
end
