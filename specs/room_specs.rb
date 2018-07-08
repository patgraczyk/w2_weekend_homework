require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')


class RoomTest < MiniTest::Test

def setup
  @room1 = Room.new("Disney Room", 5, 10)
  @room2 = Room.new("Small Room", 5, 3)
  @song1 = Song.new("Under the sea")
  @song2 = Song.new("Be a Man")
  @song3 = Song.new("How far I'll go")
  @songlist = [@song1.title, @song2.title, @song3.title]
  @guest1 = Guest.new("Walt Disney", 20, "Under the sea")
  @guest2 = Guest.new("Molly Kind", 4, "How far I'll go")
  @guest3 = Guest.new("John Smith", 6, "Be a Man")
  @guest4 = Guest.new("Freddie Jim", 10, "Colors of the wind")
  @guests = [@guest1, @guest2, @guest3, @guest4]
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

def test_guest_canont_afford_to_enter
  actual =@room1.cannot_afford_to_enter(@guest2)
  assert_equal("access denied", actual)
end

def test_room_capacity
  assert_equal(10, @room1.capacity)
end
#
def test_room_has_space
  actual = @room1.room_space(@guests.count)
  assert_equal("go in!", actual)
end

def test_room_no_space
  actual = @room2.room_space(@guests.count)
  assert_equal("not enough space", actual)
end

def test_favourite_song_on_songlist
  actual = @room1.favourite_song_list(@songlist, @guest1.favourite_song)
  assert_equal("woohoo", actual)
end

# def test_favourite_song_not_on_songlist
#   actual = @room1.favourite_song_list(@guest4.favourite_song, @songlist)
#   assert_equal("song not found", actual)
# end


end #end of class
