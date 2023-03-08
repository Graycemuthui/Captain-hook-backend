class Customer < ApplicationRecord
  has_many :orders, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :country, presence: true
end
