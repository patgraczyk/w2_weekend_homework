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
  @guest1 = Guest.new("Walt Disney")
end

def test_add_song_to_room
  @room1.add_song_to_room(@song1)
  assert_equal(1, @room1.songs_in_room.length)
end

# def test_checkin_guest_from_room
#   assert_equal(1, @number_of_guests.length)
# end
# #
# def test_checkout_guest_from_room
#   assert_equal(0, @number_of_guests.length)
# end



end #end of class
