class DeliveryService
  include Constants

  def initialize
    all_bikes = Array.new(Constants::BIKES_NUMBER) { Bike.new }
    all_cars = Array.new(Constants::CARS_NUMBER) { Car.new(rand(1000..9999)) }
    @all_transport = all_bikes + all_cars
  end

  def find_transport(weight, distance)
    suitable_transport = @all_transport.select do |element|
      element.available == true && weight <= element.max_weight && distance <= element.max_distance if element.max_distance.present?
    end
    raise 'Sorry, all couriers are busy at the moment.' if suitable_transport.empty?

    suitable_transport.sort(add_sorting_logic_here)
    picked_transport = suitable_transport.first
    picked_transport.available = false
  end
end
