require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')



class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Barry Star", 20, "Under the sea")
  end


  def test_guest_has_name
    assert_equal("Barry Star", @guest1.full_name())
  end

  def test_guest_has_money
    assert_equal(20, @guest1.money)
  end

  def test_guest_has_favorite_song
    assert_equal("Under the sea", @guest1.favourite_song)
  end


end #end of class
