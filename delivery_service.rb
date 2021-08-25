class DeliveryService
  include Constants

  attr_accessor :weight, :distance

  def initialize(weight, distance)
    @weight = weight
    @distance = distance
    @available_transport = Array.new(Constants::BIKES_NUMBER) { Bike.new }
  end

  def find_transport
    if @weight <= BIKE_MAX_WEIGHT && @distance <= BIKE_MAX_DISTANCE && @available_transport.positive?
      # select bike as transport
      available_bike = @available_transport.first
      available_bike.available = false
      # delete the busy bike from array
      # ...
    elsif @available_transport.positive?
      # select car as transport
    else
      puts 'Sorry, all couriers are busy at the moment.'
    end
  end
end
