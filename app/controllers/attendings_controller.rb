class AttendingsController < ApplicationController

	def index
		@user = User.find(params[:id])
		render :index
	end

	def create
		@user = current_user
		@event = Event.find(params[:event_id])
		@user.events.push(@event)
			#logging current_user joined an event
		Log.create(event_id:@event.id, user_id:@user.id, action:"joined")

		redirect_to event_path(@event.id)	
	end

	def edit
		puts 'the route is correct'
		@user = current_user
		@event = Event.find(params[:event_id])
		@event.users.delete(@user.id)

			#logging current_user left an event
		Log.create(event_id:@event.id, user_id:@user.id, action:"left")


		redirect_to event_path(@event.id)
	end

end
