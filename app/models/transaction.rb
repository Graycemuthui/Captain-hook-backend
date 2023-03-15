class Transaction < ApplicationRecord
  has_many :orders
end
