Homebase::Application.routes.draw do
 root :to => "chats#index"
    resources :chats
   match '/party/:id', :to => "chats#party", :as => :party, :via => :get
end
