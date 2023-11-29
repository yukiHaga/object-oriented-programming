require_relative "./models/shipping_cost"
require_relative "./models/quantity"
require_relative "./models/customer"
require_relative "./models/customers"

def main
  # quantity = 3
  # prodcut_price = 300

  # total_price = calc_total_price(quantity, prodcut_price)
  # puts total_price

  # 値オブジェクト
  # q = Quantity.new(101)
  # puts q.value

  # コレクションオブジェクト
  customers = Customers.new([
    Customer.new(id: 1, first_name: "a", last_name: "fuga"),
    Customer.new(id: 2, first_name: "b", last_name: "fuga"),
    Customer.new(id: 3, first_name: "c", last_name: "fuga")
  ])

  p customers
end

# @param [Integer] quantity
# @param [Integer] unit_price
def calc_total_price(quantity, unit_price)
  tax_percentage = 1.1
  base_price = quantity * unit_price
  (base_price + shipping_cost(base_price)) * tax_percentage
end

def shipping_cost(base_price)
  shipping_cost = ShippingCost.new(base_price)
  shipping_cost.amount
end

main
