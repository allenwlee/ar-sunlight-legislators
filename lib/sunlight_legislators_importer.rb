require 'csv'

class SunlightLegislatorsImporter
  def self.import(filename = File.dirname(__FILE__) + "/../db/data/legislators.csv")
    csv = CSV.new(File.open(filename), :headers => true)
    csv.each do |row|
      row.each do |field, value|
        Politician.create(field: value)
      end
    end
  end
end

begin
  raise ArgumentError, "you must supply a filename argument" unless ARGV.length == 1
  SunlightLegislatorsImporter.import(ARGV[0])
rescue ArgumentError => e
  $stderr.puts "Usage: ruby sunlight_legislators_importer.rb <filename>"
rescue NotImplementedError => e
  $stderr.puts "You shouldn't be running this until you've modified it with your implementation!"
end

#example
# module StudentsImporter
#   def self.import(filename=File.dirname(__FILE__) + "/../db/data/students.csv")
#     field_names = nil
#     Student.transaction do
#       File.open(filename).each do |line|
#         data = line.chomp.split(',')
#         if field_names.nil?
#           field_names = data
#         else
#           attribute_hash = Hash[field_names.zip(data)]
#           student = Student.create!(attribute_hash)
#         end
#       end
#     end
#   end
# end

