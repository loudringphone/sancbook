class Sanction < ApplicationRecord
    belongs_to :country, :optional => true
    has_many :favourites, dependent: :delete_all
    validates :name, :presence => true, :uniqueness => true
    belongs_to :user, :optional => true
    has_many :comments, dependent: :delete_all
    validates_format_of :name, with: /[a-zA-Z]+/, message: "must contain at least one letter"

end
