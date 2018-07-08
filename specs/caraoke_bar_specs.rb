require('minitest/autorun')
require('minitest/rg')
require_relative('../caraoke_bar.rb')
require_relative(../"room.rb")



class CaraokeBarTest < MiniTest::Test

attr_reader :name, :rooms

def initialize (name, rooms)
  @name = name
  @rooms = rooms
end




end #end of class
