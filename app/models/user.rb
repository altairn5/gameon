class User < ActiveRecord::Base
	has_many :sports
	
	belongs_to :cities

	has_many :attendings
	has_many :events, through: :attendings

	has_secure_password
	validates :email, :password, presence: true
	validates :email, uniqueness: true
	validates_confirmation_of :password


  def self.confirm(params)
    user = User.find_by_email(params[:email])
    user.try(:authenticate, params[:password])
  end


end
