class Trip

  attr_accessor :guest, :listing

  @@all_trip = []

  def initialize(guest, listing)
    @listing= listing
    @guest = guest

    @@all_trip << self
  end



  def self.all
    @@all_trip

  end



end
