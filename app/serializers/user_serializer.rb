class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :date_of_birth, :password_digest
end
