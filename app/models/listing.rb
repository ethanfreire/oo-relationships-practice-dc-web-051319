class Listing

  @@all_listing = []
  attr_accessor :city


  def initialize(city)
    @city = city
    @@all_listing << self
  end

  def guests
    trips = Trip.all.select do |dest|
      dest.listing == self
    end
    trips.collect do |guest_name|
      guest_name.guest
    end

  end

  def trips
    Trip.all.select do |dest|
      dest.listing == self
    end
  end



  def trip_count

    self.trips.length

  end



  def self.all
    @@all_listing
  end 

  def self.find_all_by_city(city)
    listings = Listing.all.select do |listing|
      listing.city == city

    end
    if listings.empty?
      return "That city was not part of our listing"
    else
      return listings
    end
  end

  def self.most_popular
    self.all.max_by do |listing|
      listing.trip_count
    end
  end
end
