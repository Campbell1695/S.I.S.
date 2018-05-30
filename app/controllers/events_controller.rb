class EventsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
      @event = Event.all
  end

  def new
  @event = Event.new
end

  def create
      @event = Event.new(event_params)
      if @event.save
          redirect_to @event
        else
          redirect_to 'new'
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

redirect_to @event
end

  def destroy
  @event = Event.find(params[:id])
    @event.destroy

      redirect_to events_path
  end

private
def update_params
params.require(:update).permit(:title, :content, :cost, :description, :host, :misc, :setting, :image)
end

def event_params
params.require(:create).permit(:title, :content, :cost, :description, :host, :misc, :setting, :image)
  end

end
