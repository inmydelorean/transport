class Car < Transport
  include Constants

  attr_accessor :license_number

  def initialize(license_number)
    @license_number = license_number
    @max_weight = CAR_MAX_WEIGHT
    @speed = CAR_MAX_SPEED
    super
  end
end