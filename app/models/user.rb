class User < ApplicationRecord
    has_many :favourites
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
end