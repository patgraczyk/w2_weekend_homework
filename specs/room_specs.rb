require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')


class RoomTest < MiniTest::Test

def setup
  @song1 = Song.new("Under the sea")
  @song2 = Song.new("Be a Man")
  @song3 = Song.new("How far I'll go")
  @songlist = [@song1 + @song2 + @song3]
end

# def test_checkin_guest_room
#   assert_equal(1, @number_of_guests)
# end
#
# def test_checkout_guest_room
#   assert_equal(0,@number_of_guests)
# end

def test_song_in_roon
  assert_equal(1, )
end

end #end of class
