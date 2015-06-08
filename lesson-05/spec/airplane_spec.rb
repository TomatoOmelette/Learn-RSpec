require 'airplane'

describe 'Airplane' do

  describe 'attributes' do
    it 'allows reader and writer access for :manufacturer' do
      airplane = Airplane.new
      airplane.manufacturer = 'Beechcraft'
      expect(airplane.manufacturer).to eq('Beechcraft')
    end

    it 'allows reader and writer access for :model' do
      airplane = Airplane.new
      airplane.model = 'G58 Baron'
      expect(airplane.model).to eq('G58 Baron')
    end

    it 'allows reader and writer access for :max_gross_takeoff_weight_kg' do
      airplane = Airplane.new
      airplane.max_gross_takeoff_weight_kg = 2495
      expect(airplane.max_gross_takeoff_weight_kg).to eq(2495)
    end

    it 'returns a description of the airplane' do
      aircraft_specs = { 'manufacturer' => 'Flight Design',
                         'model' => 'CTSW',
                         'max_gross_takeoff_weight_kg' => '600' }
      airplane = Airplane.new(aircraft_specs)
      expect(airplane.summary).to eq('Flight Design CTSW with a max gross '\
                                     'takeoff weight of 600 kg')
    end
    context 'when initialized without aircraft_specs arguments' do
      it 'returns the default aircraft description' do
        airplane = Airplane.new
        expect(airplane.summary).to eq('Cessna 172s with a max gross takeoff '\
                                       'weight of 1157 kg')
      end
    end
  end

  describe '.light_civil_aircraft_types' do
    it 'returns an array of civil aircraft types' do
      t = ['ultralight', 'light sport', 'utility transport', 'racing monoplane']
      expect(Airplane.light_civil_aircraft_types).to eq(t)
    end
  end
end
