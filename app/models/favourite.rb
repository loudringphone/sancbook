class Favourite < ApplicationRecord
    # belongs_to :sanction
    validates :sanction_id, presence: true, uniqueness: { scope: :user_id }
    validates :user_id, presence: true, uniqueness: { scope: :sanction_id }
    # belongs_to :user
end
