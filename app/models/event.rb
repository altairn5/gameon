class Event < ActiveRecord::Base
	belongs_to :city
	belongs_to :sport

	has_many :attendings
	has_many :users, through: :attendings, dependent: :destroy #delete associated attendings

end
