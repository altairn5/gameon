class Event < ActiveRecord::Base
	belongs_to :city

	has_many :attendings
	has_many :users, through: :attendings


end
