class Favourite < ApplicationRecord
    belongs_to :user, :optional => true
    has_and_belongs_to_many :dictators
    has_and_belongs_to_many :sanctions  
end
