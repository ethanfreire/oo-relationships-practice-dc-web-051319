class Guest

@@all_guest = []
attr_accessor :name
def initialize(name)
@name = name
@@all_guest << self
end

def listing
  guest_homi = Trip.all.select do |g|
    g.guest == self
  end
  guest_homi.collect do |l|
    l.listing
  end
end

def trips
  Trip.all.select do |g|
    g.guest == self
  end
end

def trip_count
      self.trips.length
end

def self.all
  @@all_guest
end

def self.pro_traveller
  traveller = []
  self.all.count do |guest_stuff|
  if guest_stuff.trip_count > 1
    traveller << guest_stuff
    end
  end
  traveller
end

def self.find_all_by_name(name)
  guest = Guest.all.select do |guest|
    guest.name.downcase == name.downcase 
  end
  if guest.empty?
    return "That guest was not part of our listing"
  else
    return guest
    end
  end
end
