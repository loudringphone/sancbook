class Favourite < ApplicationRecord
    validates :sanction_id, presence: true, uniqueness: { scope: :user_id }
    validates :user_id, presence: true, uniqueness: { scope: :sanction_id }
end
