class Customer
  attr_reader :id, :first_name, :last_name

  # @param [Integer] id
  # @param [String] first_name
  # @param [String] last_name
  def initialize(id:, first_name:, last_name:)
    @id = id
    @first_name = first_name
    @last_name = last_name
  end
end
