require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')



class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Barry Star")
  end


  def test_guest_has_name
    assert_equal("Barry Star", @guest1.full_name())
  end


end #end of class
