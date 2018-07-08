class Room

attr_reader :name, :price, :songs_in_room, :number_of_guests

def initialize(name, price)
  @name = name
  @price = price
  @number_of_guests = []
  @songs_in_room = []
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

end
