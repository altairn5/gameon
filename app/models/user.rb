class User < ActiveRecord::Base
	has_many :sports
	has_many :events
	belongs_to :cities

	has_secure_password
	validates :email, :password, presence: true
	validates :email, uniqueness: true
	validates_confirmation_of :password


  def self.confirm(params)
    user = User.find_by_email(params[:email])
    user.try(:authenticate, params[:password])
  end


end
