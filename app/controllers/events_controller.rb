class EventsController < InheritedResources::Base

  def create 
    @event = Event.new(person_params)
    @event.org_id = params[:org_id]
    if @event.save 
      redirect_to org_path(@event.org)
    else #Handle this !!
      redirect_to org_path(@event.org)      
    end
  end

  def show
    @event = Event.find_by_id(params[:id])
  end

  def new
    @org = Org.find(params[:org_id])
    @event = Event.new
  end

  def event_params
    params.require(:event).permit!
  end

end
