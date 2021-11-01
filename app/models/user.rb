class User < ApplicationRecord
    has_one :place, dependent: :destroy
    validates :name, :phone, presence: true, uniqueness: true
    
end
