class OrgsController < InheritedResources::Base

  def create
    @org = Org.create(org_params)
    redirect_to org_path(@org)
  end

  def show
    @org = Org.find_by_id(params[:id])
    @people = @org.people
    @events = @org.events
  end

  def org_params
    params.require(:org).permit!
  end

end
