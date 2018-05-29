class EventsController < ApplicationController
  def index
      @event = Event.all
  end

  def create
      @event = Event.new(event_params)
      if @event.save
          redirect_to "/socialhub"
        else redirect_to "socialhub"
      end
  end

  def show
      @event = Event.find(params[:id])
  end

  def edit
      @event = Event.find(params[:id])
  end

def update
@event = Event.find(params[:id])
@event.update(update_params)
@event.save

redirect_to "/socialhub"
end

  def destroy
  @event = Event.find(params[:id])
    @event.destroy

      redirect_to "socialhub"
  end

private
def update_params
params.require(:update).permit(:veh_name, :veh_location, :seats, :avatar)
end

def ship_params
params.require(:create).permit(:veh_name, :veh_location, :seats, :avatar)
  end

end
