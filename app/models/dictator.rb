class Dictator < ApplicationRecord
    belongs_to :country, :optional => true
    has_and_belongs_to_many :favourites
end