class ProductsRepresenter
  def initialize(product)
    @product = product
  end

  def as_json
    products.map do |product|
      {
        id: product.id,
        name: product.name,
        description: product.description,
        price: product.price,
        category: product.category,
        image: product.image
      }
    end
  end

  private

  attr_reader :product
end
