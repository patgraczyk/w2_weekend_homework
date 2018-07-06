require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')



class RoomTest < MiniTest::Test

def test_checkin_guest_room
  assert_equal(1, @number_of_guests)
end

def test_checkout_guest_room
  assert_equal(0,@number_of_guests)
end


end #end of class
