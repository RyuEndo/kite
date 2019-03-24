class Response < ApplicationRecord
    validates :store_id, presence: true
    validates :user_id , presence: true
    belongs_to:user
    belongs_to :post
    belongs_to :store
    
end
