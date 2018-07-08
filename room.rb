class Room

attr_reader :name, :price, :songs_in_room

def initialize(price, name)
  @price = price
  @name = name
  @number_of_guests = []
  @songs_in_room = []
end

def add_song_to_room(song)
  @songs_in_room << song
end

# def check_in_guest_room(guest)
#   @number_of_guests << guest
# end
#
# def check_out_guest_room(guest)
#   index = @number_of_guests.index(person)
#   @number_of_guests.slice!(index, 1)
# end





end
