class Sanction < ApplicationRecord
    validates :name, :uniqueness => true, :presence => true, uniqueness: { case_sensitive: false }
    validates_format_of :name, with: /[a-zA-Z]+/, message: "must contain at least one letter"

    belongs_to :country, :optional => true
    has_many :favourites, dependent: :delete_all
    belongs_to :user, :optional => true
    has_many :comments, dependent: :delete_all

    
    
  






end
