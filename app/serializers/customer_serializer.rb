class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :date_of_birth, :address, :phone_number, :email, :user_id
end
