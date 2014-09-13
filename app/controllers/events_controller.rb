class EventsController < InheritedResources::Base

  def create 
    @event = Event.new(event_params)
    @event.org_id = params[:org_id]
    if @event.save 
      redirect_to org_path(@event.org)
    else #Handle this !!
      redirect_to org_path(@event.org)      
    end
  end

  def show
    @event = Event.find(params[:id])
    @org = Org.find(params[:org_id])
    @people = @org.people
  end

  def new
    @org = Org.find(params[:org_id])
    @event = Event.new
  end

  def event_params
    params.require(:event).permit!
  end

end
