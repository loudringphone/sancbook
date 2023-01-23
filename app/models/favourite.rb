class Favourite < ApplicationRecord
    validates :title, :presence => true, uniqueness: { scope: :user_id }
    has_many :dictators
    has_many :sanctions
    belongs_to :user
end
