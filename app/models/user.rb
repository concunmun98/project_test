class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :posts, dependent: :destroy
  has_many :rates, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one :image_attached
  has_many :notifications, as: :recipient

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  	def current_user?(user)
		user && user == self
	end
     
end
