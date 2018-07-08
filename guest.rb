class Guest

attr_reader :full_name, :money, :favourite_song
attr_accessor :money, :favourite_song

  def initialize (full_name, money, favourite_song)
    @full_name = full_name
    @money = money
    @favourite_song = favourite_song
  end


end #end of class
