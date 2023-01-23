class Dictator < ApplicationRecord
    belongs_to :country, :optional => true
    has_and_belongs_to_many :favourites
    validates :name, :presence => true, :uniqueness => true
    belongs_to :user, :optional => true
    
end