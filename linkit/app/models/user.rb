class User < ActiveRecord::Base
	has_many :links
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :profile_name, :email, :password, :password_confirmation
end
