class Transport
  include Comparable

  attr_accessor :max_weight, :speed, :available

  def <=>(other)
    delivery_efficiency <=> other.delivery_efficiency
  end

  def initialize(max_weight, speed)
    @max_weight = max_weight
    @speed = speed
    @available = true
  end

  def process_speed
    raise "Speed can't be 0 or less" if @speed <= 0
  end

  def process_weight
    raise "Weight can't be 0 or less" if @max_weight <= 0
  end

  def delivery_time(distance)
    distance / @speed
  end

  def delivery_efficiency
    @speed / @max_weight
  end
end
