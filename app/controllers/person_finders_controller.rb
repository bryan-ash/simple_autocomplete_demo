class PersonFindersController < ApplicationController
  autocomplete_for :person, :name
  
  def show
    found_person = Person.find_by_name(params[:name])
    if found_person
      redirect_to edit_person_path(found_person)
    else
      redirect_to people_path
    end

  end

end
