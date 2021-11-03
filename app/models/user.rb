class User < ApplicationRecord
    has_one :place, dependent: :destroy
    validates :name, :phone, presence: true 
    validates :phone, uniqueness: true
    accepts_nested_attributes_for :place
end
