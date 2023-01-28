class Country < ApplicationRecord
    has_many :dictators, dependent: :delete_all
    validates :name, :presence => true, :uniqueness => true
    has_many :sanctions, dependent: :delete_all
    validates_format_of :name, with: /[a-zA-Z]+/, message: "must contain at least one letter"
end
