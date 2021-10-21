class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :total, :date, :user_id, :customer_id
end
