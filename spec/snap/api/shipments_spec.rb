RSpec.describe Snap::Api::Shipments do
  describe '#find' do
    subject { described_class.find(id: id) }

    context 'when the shipment exists in Snap' do
      # This is a shipment ID that exists in the
      # Snapfulfil test environment used for
      # recording cassettes.
      let(:id) { 'JTEST1' }

      it 'finds a shipment', :vcr do
        expect(subject['ShipmentId']).to eq 'JTEST1'
      end
    end

    context 'when the shipmnent does not exist in Snap' do
      let(:id) { '32908470129874321' }

      it 'does not find a shipment', :vcr do
        expect(subject.code).to eq 404
        expect(subject.body).to eq 'No matching entity'
      end
    end
  end

  describe '#create' do
    subject { described_class.create(options) }

    let(:options) do
      {
        ShipmentId: 'TEST-SHIPMENT-001',
        CustomerId: 1,
        DateDueOut: DateTime.new(1849, 10, 31)
      }
    end

    it 'creates the shipment in Snap', :vcr do
      expect(subject.code).to eq 201
      expect(subject['ShipmentId']).to eq 'TEST-SHIPMENT-001'
    end
  end
end
