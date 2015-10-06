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
    @creator = "#{User.find(@event.user_id).first_name} #{User.find(@event.user_id).last_name}"
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
  end

  def update
  end

  def destroy
  end

end
