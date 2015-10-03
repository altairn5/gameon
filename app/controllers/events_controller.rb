class EventsController < ApplicationController

  def index
    @events = Event.all
    current_user

    render :index
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    render :show
  end

  def create
    @event = Event.create(event_params)
    redirect_to '/events'
  end

  def edit
  end

  def update
  end

  def destroy
  end

    private

  def event_params
    params.require(:library).permit(:name, :address, :start_date, :start_time, :max_headcount, :current_headcount, :description)
  end

end
