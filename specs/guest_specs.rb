require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')



class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Barry Star", 20)
  end


  def test_guest_has_name
    assert_equal("Barry Star", @guest1.full_name())
  end

  def test_guest_has_money
    assert_equal(20, @guest1.money)
  end


end #end of class
