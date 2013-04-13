class User < ActiveRecord::Base

  has_many :timeline_objects

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, 
  :remember_me, :user_name

  validates :user_name, presence: true, uniqueness: true, format:{
														  	with: /^[a-zA-Z0-9_-]+$/,
														  	message: 'Must be formatted correctly.'
														  }

end
