SimpleAutocompleteDemo::Application.routes.draw do
  resources :people do 
    get :autocomplete_for_person_name, :on => :collection
  end

  resource :person_finder, :only => :show do
    get :autocomplete_for_person_name
  end
  
  root :to => "people#index"
end
