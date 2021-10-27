class ProductSerializer < ActiveModel::Serializer
    attributes :id, :price, :category, :name, :sale_ids
  end