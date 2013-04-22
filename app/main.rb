require '../db/config'
class Interface
  
  attr_reader :command, :option

  def initialize
    # welcome
    # menu
    # gets_input
    find(gets.chomp)
  end


  # def welcome
  #   puts "Welcome to Sunshine Congress"
  # end

  # def menu
  #   puts "Type one: search | list"
  #   puts "Followed by the politician
  #   name"
  #   puts "(e.g., search Dianne Feinstein)"
  # end

  # def gets_input
  #   @command = gets.chomp[0]
  #   @option = gets.chomp[1..-1]
  # end

  # def query
  #   if @command == 'search'
  #     find(@option)
  #   else
  #     puts "didn't work"
  #   end
  # end

  def find(num)
    Politician.find(num)
  end

end

Interface.new
