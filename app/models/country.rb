class Country < ApplicationRecord
    has_many :dictators
    has_many :sanctions, dependent: :delete_all
    validates :name, :presence => true, :uniqueness => true
end
