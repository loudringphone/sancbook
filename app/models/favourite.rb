class Favourite < ApplicationRecord
    belongs_to :user,
    has_many :dictators
    has_many :sanctions
end
