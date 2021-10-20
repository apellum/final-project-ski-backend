class Product < ApplicationRecord
    has_many :transaction_products
    has_many :transactions, through: :transaction_products
end
