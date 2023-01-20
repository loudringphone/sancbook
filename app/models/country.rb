class Country < ApplicationRecord
    has_many :dictators
    has_many :sanctions
end