class EventsController < ApplicationController

  def index
    @events = Event.all
    current_user #sets @current_user
    render :index
  end

  def new
    user = current_user
    @city_id = params[:city_id]
    @event = Event.new
    render :new
  end

  def show
    @event = Event.find(params[:id])
    @creator = User.find(@event.user_id)
    id = params[:id]
    @event = Event.find(params[:id])
    render :show
  end

  def create
    user = current_user
    event_params = params.require(:event).permit(:name, :address, :max_headcount, :current_headcount, :description, :start_time, :sport)
    event_params[:user_id] = user.id
    event_params[:city_id] = params[:id]
    event = Event.create(event_params)
    redirect_to "/cities/#{event_params[:city_id]}"
  end

  def edit
    id = params[:id]
    @event = Event.find(params[:id])
  end

  def update
    event_id = params[:id]
    event = Event.find(event_id)

    #get updated data
    updated_attributes = params.require(:event).permit(:name, :address, :max_headcount, :current_headcount, :description, :start_time, :sport)
    #update the article 
    event.update_attributes(updated_attributes)
    #redirect to show
    redirect_to "/events/#{event_id}"
  end

  def destroy
    id = params[:id]
    event = Event.find(id)
    event.destroy
    redirect_to "/cities"
  end

end
