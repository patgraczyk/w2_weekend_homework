require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')


class RoomTest < MiniTest::Test

def setup
  @room1 = Room.new("Disney Room", 5)
  @song1 = Song.new("Under the sea")
  @song2 = Song.new("Be a Man")
  @song3 = Song.new("How far I'll go")
  # @songlist = [@song1 + @song2 + @song3]
  @guest1 = Guest.new("Walt Disney", 20)
end

def test_add_song_to_room
  @room1.add_song_to_room(@song1)
  assert_equal(1, @room1.songs_in_room.length)
end

def test_checkin_guest_to_room
  @room1.check_in_guest_room(@guest1)
  assert_equal(1, @room1.number_of_guests.length)
end

def test_checkout_guest_from_room
  @room1.check_out_guest_room(@guest1)
  assert_equal(0, @room1.number_of_guests.length)
end

def test_room_price
  assert_equal(5, @room1.price)
end

def test_guest_has_money
  # @room1.check_guest_has_cash(@guest1)
  assert_equal(20, @guest1.money)
end

def test_guest_can_afford_to_enter
  @room1.can_afford_to_enter(@guest1)
  assert_equal(15, @guest1.money)
end
#
# def test_room_capacity
# end
#
# def test_room_no_space
# end

end #end of class
