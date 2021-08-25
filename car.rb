class Car < Transport
  include Constants

  attr_accessor :license_number

  def initialize(license_number)
    super(CAR_MAX_WEIGHT, CAR_MAX_SPEED)
    @license_number = license_number
  end
end
