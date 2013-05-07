Baby::Application.routes.draw do
  root :to => 'babys#index'

  get "/babys", controller: 'babys', action: 'index' #works
  post "/babys", controller: 'babys', action: 'create' #works
  get "/babys/new", controller: 'babys', action: 'new' #works

  get "/babys/:id", controller: 'babys', action: 'show' 
  put "/babys/:id", controller: 'babys', action: 'update' #works

  get "/babys/:id/edit", controller: 'babys', action: 'edit' #works
  
  delete "/babys/:id", controller: 'babys', action: 'destroy' #works w/ validation!
end