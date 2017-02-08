Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get("/guesses", {:controller => "find", :action => "guesses"})
get("/guesses/:number", {:controller => "find", :action => "single_guess"})
get("/guesses/new", {:controller => "find", :action => "new_form"})
get("/guesses/create_guess", {:controller => "find", :action => "create_row"})
get("/guesses/:old_row_id/edit", {:controller => "find", :action => "edit row"})

end
