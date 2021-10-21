class SaleSerializer < ActiveModel::Serializer
  attributes :id, :total, :date
  has_one :user
  has_one :customer
end
