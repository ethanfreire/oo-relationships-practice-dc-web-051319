require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("sandy")
listing1 = Listing.new("Bikini Bottom")
trip1 = Trip.new(guest1, listing1)
guest2 = Guest.new("ethan")
trip2 = Trip.new(guest2, listing1)
listing2 = Listing.new("Germany")
listing3 = Listing.new("New York")
trip3 = Trip.new(guest1, listing3)
trip4 = Trip.new(guest2, listing2)





Pry.start
