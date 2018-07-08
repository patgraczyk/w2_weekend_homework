class Room

attr_reader :name, :price, :songs_in_room, :number_of_guests, :capacity, :waiting_room

def initialize(name, price, capacity)
  @name = name
  @price = price
  @number_of_guests = []
  @songs_in_room = []
  @capacity = capacity
  @waiting_room =[]
end

def add_song_to_room(song)
  @songs_in_room << song
end

def check_in_guest_room(guest)
  @number_of_guests << guest
end
#

def check_out_guest_room(guest)
  @number_of_guests.delete(guest)
end

def can_afford_to_enter(guest)
  guest.money -= @price
end

def cannot_afford_to_enter(guest)
  if guest.money < @price
    return "access denied"
  end
end

def room_no_space(guest)
  if @capacity < guest
    return "not enough space"
  end
  else return "go in!"
end

def favourite_song_on_list(guest_song, songlist)
  for song in songlist
    if guest_song == song
  end
  return "woohoo"
end
end

end
