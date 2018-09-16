RSpec.describe Snap::Api::ShipmentStatus do
  describe '#update' do
    subject { described_class.update(options) }

    let(:options) do
      { ShipmentId: 'TEST-SHIPMENT-001', Status: '02' }
    end

    it "updates the shipment's status", :vcr do
      expect(subject.code).to eq 200
    end
  end
end
