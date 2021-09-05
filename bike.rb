class Bike < Transport
  include Constants

  attr_accessor :max_distance

  def initialize
    super(BIKE_MAX_WEIGHT, BIKE_MAX_SPEED)
    @max_distance = BIKE_MAX_DISTANCE
  end
end
