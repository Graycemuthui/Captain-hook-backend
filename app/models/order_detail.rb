class OrderDetail < ApplicationRecord
  has_many :orders
  belongs_to :order
  belongs_to :product
end
