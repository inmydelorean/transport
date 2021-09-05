class Transport
  include Comparable

  attr_accessor :max_weight, :speed, :available

  def compare_transport(other)
    if @max_weight > other.max_weight
      1
    elsif @max_weight == other.max_weight
      if max_distance > other.max_distance
        1
      elsif max_distance == other.max_distance
        0
      elsif max_distance < other.max_distance
        -1
      end
    elsif @max_weight < other.max_weight
      -1
    else
      raise 'Elements are not comparable.'
    end
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
    process_speed
    distance / @speed
  end

  def delivery_efficiency
    process_weight
    @speed / @max_weight
  end
end
