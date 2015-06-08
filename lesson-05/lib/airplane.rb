# Let's make airplanes!
class Airplane
  attr_accessor :manufacturer, :model, :max_gross_takeoff_weight_kg

  def initialize(aircraft_specs = {})
    self.manufacturer = aircraft_specs['manufacturer'] || 'Cessna'
    self.model = aircraft_specs['model'] || '172s'
    self.max_gross_takeoff_weight_kg =
         (aircraft_specs['max_gross_takeoff_weight_kg'] || 1157).to_i
  end

  def self.light_civil_aircraft_types
    ['ultralight', 'light sport', 'utility transport', 'racing monoplane']
  end

  def summary
    "#{manufacturer} #{model} with a max gross takeoff weight of "\
    "#{max_gross_takeoff_weight_kg} kg"
  end
end
