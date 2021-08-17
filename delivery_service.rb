class DeliveryService
  include Constants

  attr_accessor :weight, :distance

  def initialize(weight, distance)
    @weight = weight
    @distance = distance
    @available_cars_number = CARS_NUMBER
    @available_bikes_number = BIKES_NUMBER
  end

  def find_transport
    if @weight <= BIKE_MAX_WEIGHT && @distance <= BIKE_MAX_DISTANCE && @available_bikes_number.positive?
      # select bike as transport
    elsif @available_cars_number.positive?
      # select car as transport
    else
      puts 'Sorry, all couriers are busy at the moment.'
    end
  end
end