class Transport
  include Comparable

  attr_accessor :max_weight, :speed, :available

  def <=>(other)
    delivery_efficiency <=> other.delivery_efficiency
  end

  def initialize(**opts)
    @max_weight = opts[:max_weight]
    @speed = opts[:speed]
    @available = opts[:max_weight]
  end

  def delivery_time(distance)
    distance / @speed
  end

  def delivery_efficiency
    @speed / @max_weight
  end
end