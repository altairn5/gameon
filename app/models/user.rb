class User < ActiveRecord::Base
	has_many :sports
	has_many :events
	belongs_to :cities

	has_secure_password
	validates :first_name, :last_name, :email, :password, :password_confirmation, presence: true
		validates :email, uniqueness: true


  def self.confirm(params)
    user = User.find_by_email(params[:email])
    user.try(:authenticate, params[:password])
  end


end
