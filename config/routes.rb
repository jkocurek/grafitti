Rails.application.routes.draw do
  get 'graffiti/report'
get '/graffiti/:alderman,:month,:year', to: 'graffiti#report'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
