class TransactionProductSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :transaction_id
end
