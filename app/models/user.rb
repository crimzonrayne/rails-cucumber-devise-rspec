class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

    validates_presence_of :name
	validates_uniqueness_of :name, :email, :case_sensitive => false

	private

	def secure_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation, :remember_me)
	end
end
