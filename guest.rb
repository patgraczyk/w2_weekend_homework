class Guest

attr_reader :full_name, :money
attr_accessor :money

  def initialize (full_name, money)
    @full_name = full_name
    @money = money
  end


end #end of class
