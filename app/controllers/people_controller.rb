class PeopleController < InheritedResources::Base

  def create 
    @person = Person.new(person_params)
    @person.org_id = params[:org_id]
    if @person.save 
      redirect_to org_path(@person.org)
    else #Handle this !!
      redirect_to org_path(@person.org)      
    end
  end

  def show
    @person = Person.find_by_id(params[:id])
    @org = Org.find(params[:org_id])
  end

  def new
    @org = Org.find(params[:org_id])
    @person = Person.new
  end

  def person_params
    params.require(:person).permit!
  end

end
