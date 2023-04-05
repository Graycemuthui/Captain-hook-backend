class CustomersRepresenter
  :error
  def initialize(customer)
    @customer = customer
  end

  def as_json
    customers.map do |customer|
      {
        id: customer.id,
        first_name: customer.first_name,
        last_name: customer.last_name,
        email: customer.email,
        address: customer.address,
        city: customer.city,
        country: customer.country
      }
    end
  end

  private

  attr_reader :customer
end
