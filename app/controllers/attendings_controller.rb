class AttendingsController < ApplicationController

def index
	@user = User.find(params[:id])
	render :index
end

def create
	@user = current_user
	@event = Event.find(params[:event_id])
	@user.events.push(@event)

	redirect_to event_path(@event.id)
end

def destroy
	@user = current_user
	@event = Event.find(params[:event_id])
	@user.events.pop(@event)

	redirect_to user_path(@user.id)
end

end