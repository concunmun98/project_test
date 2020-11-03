class Rate < ApplicationRecord
	belongs_to :user
	belongs_to :rate_duty, polymorphic: true
	validates :user_id, presence: true
	validates :rating, presence: true
	
end
