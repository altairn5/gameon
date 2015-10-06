class EventsController < ApplicationController

  def index

  end

  def new
  end

  def show
    id = params[:id]
    @event = Event.find(params[:id])
    render :show
  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end

end
