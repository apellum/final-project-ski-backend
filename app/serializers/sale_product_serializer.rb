class SaleProductSerializer < ActiveModel::Serializer
  attributes :id
  has_one :product
  has_one :sale
end
