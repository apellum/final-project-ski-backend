class SaleSerializer < ActiveModel::Serializer
  attributes :id, :total, :date, :product_ids
  has_many :products
  has_one :user
  has_one :customer
end
