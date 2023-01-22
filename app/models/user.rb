class User < ApplicationRecord
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
    validates :username, :uniqueness => true, :presence => true
    has_many :sanctions, dependent: :delete_all
    has_many :dictators, dependent: :delete_all
    has_many :favourites, dependent: :delete_all
    has_many :sanctions, :through => :favourites
    has_many :dictators, :through => :favourites
end
