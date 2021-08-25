class Bike < Transport
  include Constants

  attr_accessor :max_distance

  def initialize
    super(max_weight, speed)
    @max_weight = BIKE_MAX_WEIGHT
    @speed = BIKE_MAX_SPEED
    @max_distance = BIKE_MAX_DISTANCE
  end
end
