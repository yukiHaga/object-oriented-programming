class ShippingCost
  attr_reader :base_price, :cost, :min_price_for_free

  # @param [Integer] base_price
  def initialize(base_price)
    @base_price = base_price
    @cost = 500
    @min_price_for_free = 3000
  end

  def amount
    base_price < min_price_for_free ? cost : 0
  end
end
