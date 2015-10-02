class Sport < ActiveRecord::Base
	belongs_to :users
	belongs_to :events
end
