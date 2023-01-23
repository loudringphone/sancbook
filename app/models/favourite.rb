class Favourite < ApplicationRecord
    validates :title, :presence => true, uniqueness: { scope: :user_id }
    has_many :dictators
    has_many :sanctions
    validates :sanction_id, uniqueness: { scope: :user_id }
    belongs_to :user
end
