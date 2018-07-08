require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')



class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Be a man")
  end


  def test_song_has_name
    assert_equal("Be a man", @song1.title())
  end

end #end of class
