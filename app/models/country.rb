class Country < ApplicationRecord
    has_many :dictators, dependent: :delete_all
    validates :name, :presence => true, :uniqueness => true
    has_many :sanctions, dependent: :delete_all
end
