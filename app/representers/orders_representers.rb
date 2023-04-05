class OrdersRepresenter
  def initalize
    @order = order
  end

  def as_json
    orders.map do |order|
      {
        id: order.id,
        status: order.status,
        total_price: order.total_price,
        payment_method: order.payment_method,
        shipping_address: order.shipping_address
      }
    end
  end

  private

  attr_reader :order
end
