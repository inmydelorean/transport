class Bike < Transport
  include Constants

  def initialize
    @max_distance = BIKE_MAX_DISTANCE
    @max_weight = BIKE_MAX_WEIGHT
    @speed = BIKE_MAX_SPEED
    super
  end
end