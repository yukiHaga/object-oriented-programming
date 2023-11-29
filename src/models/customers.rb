class Customers
  attr_reader :customers

  # @param [Customers] customers
  def initialize(customers)
    @customers = customers
  end

  # @param [Customer] customer
  # @return [Customers]
  def add(customer)
    customers.push(customer)
    # コレクション操作の結果の型をコレクションオブジェクトにすることで、コレクション標準の操作ができなくなり
    # 予期せぬ変更が発生しづらくなる。ゆえにプログラムが安定する
    Customers.new(customers)
  end

  # @param [Customer] customer
  # @return [Customers]
  def remove(customer)
    new_customers = customers.filter { |c| c.id == customer.id }
    Customers.new(new_customers)
  end

  # @return [Customer]
  def first
    customers.first
  end
end
