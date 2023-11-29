class Quantity
  attr_reader :value

  MIN = 1
  MAX = 100

  class InvalidMinValueError < StandardError; end
  class InvalidMaxValueError < StandardError; end

  # @param [Integer] value
  def initialize(value)
    raise InvalidMinValueError if value < MIN
    raise InvalidMaxValueError if value > MAX

    @value = value
  end

  # @param [Quantity] other_quantity
  def can_add_quantity(other_quantity)
    added_quantity = add_quantity(other_quantity)
    added_quantity <= MAX
  end

  private

  # @param [Quantity] quantity
  def add_quantity(quantity)
    value + quantity.value
  end
end
