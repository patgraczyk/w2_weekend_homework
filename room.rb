class Room

attr_reader :price,

def initialize(price, number_of_guests)
  @price = price
  @number_of_guests = []
  @songs_in_room= songlist
end

def add_song_to_room(song)
  @songs_in_room << song
end

def check_in_guest_room(guest)
  @number_of_guests << guest
end

def check_out_guest_room(guest)
  index = @number_of_guests.index(person)
  @number_of_guests.slice!(index, 1)
end





end
