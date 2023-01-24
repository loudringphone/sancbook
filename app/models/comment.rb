class Comment < ApplicationRecord
    belongs_to :sanction
    belongs_to :user
    
end