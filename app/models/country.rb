class Country < ApplicationRecord
    has_many :dictators
    has_many :sanctions
    validates :name, :presence => true, :uniqueness => true
end
