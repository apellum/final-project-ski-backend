class Transaction < ApplicationRecord
    belongs_to :user
    belongs_to :customer
    has_many :transaction_products
    has_many :products, through: :transaction_products
end
