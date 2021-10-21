class User < ApplicationRecord
    has_many :customers
    has_many :transactions
    validates :email, presence: true, uniqueness: { case_sensitive: false, message: "Username already in use." }

    has_secure_password
end
