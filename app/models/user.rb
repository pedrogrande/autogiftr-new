class User < ActiveRecord::Base
  rolify
	has_one :account
	has_many :recipients

	before_create :add_default_role

	def add_default_role
		self.add_role :user
	end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end