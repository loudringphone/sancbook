class Sanction < ApplicationRecord
    belongs_to :country, :optional => true
    validates :name, :presence => true, :uniqueness => true
end