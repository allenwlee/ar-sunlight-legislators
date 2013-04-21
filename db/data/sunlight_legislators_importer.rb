require_relative '../../app/models/politician'
require 'csv'

class SunlightLegislatorsImporter
  def self.import(filename)
    csv = CSV.new(File.open(filename), :headers => true)
    csv.each do |row|
      politician_attributes={}
      row.each do |field, value|
        politician_attributes[field] = value
      end
      Politician.create(politician_attributes)
    end
  end
end
