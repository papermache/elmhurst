Rails.application.routes.draw do

  resources :investor
  resources :account_histories do
    collection do
      post :deposit
      post :withdraw
      post :pool
      get :pool_amount
    end 
  end
  #resources :investor
 # get 'investor' => 'investor#index'
  params = { controller: 'investor', action: 'index' }

  resources :investments
  resources :memberships
  resources :authorships
  resources :application

  devise_for :users

  resources :users, only: [:show ]
  #resources :users, defaults: {format: 'xml'} ,only: [:show , :index]
  #resources :users ,only: [:index]

  #Researcher
  get '/researcher-project' => 'projects#researcherViewProjects',as: 'researcher_project'
  get '/request' => 'projects#requestsByProject'
  get '/Researcher' => 'projects#mainResearcher'
  get '/researcher' => 'projects#mainResearcher'
  get '/edit_project/id*:id'=> 'projects#editProject'
  get '/accountHistory' => 'projects#accountHistory'
  post '/update/:id' => 'projects#update_project',as: "update_project"

  #Investor
  # get '/investor-project' => 'projects#investorViewProjects'
  get '/viwe-request' => 'projects#viewRequests'
  get '/investor-account' => 'projects#viewAccount'
  get '/open-trades' => 'projects#viewOpenTrade'
  get '/trade-history' => 'projects#viewTradeHistory'
  get '/Investor' => 'projects#mainInvestor'
  get '/user/investor' => 'projects#mainInvestor'
  get '/accounthistory' => 'projects#accountHistory'
  
  #Researcher
  get '/editProject' => 'projects#edit'
  get '/new' => 'projects#new'
  get '/researcher_detail/id*:id' => 'projects#researchertDetail',as: "researchertDetail"

  #Investor
  get '/investor_detail/id*:id'=> 'projects#investor_projectDetail'

  #user
  get '/edit-profile/id*:id' => 'users#edit_profile'
  get 'user-logout' => 'devise/sessions#destroy'
  get 'registrations' => 'users#add'

  #shares
  post '/buy' => 'shares#buy'
  post '/sell' => 'shares#sell' 

  resources :projects do
    member do
      get :add_member
      get :add_investor
    end
  end

  resources :annotations 
  
  # root 'home#index'
  root 'projects#main'
  get 'main' => 'projects#main'

  namespace :api, defaults: {format: 'json'} do
    # /api/... Api::
    namespace :v1 do
      resources :projects
      resources :users
      resources :investments
      resources :authorships
      resources :memberships
      resources :logins  ,:only => [:create] 
      resources :tokens
      resources :annotations
      resources :order_books
       end
  end

  get 'test' => 'projects#test'

#match ':controller(/:show(/:id(.:format)))' => 'projects#investor_projectDetail', via: [:get]

#match 'controller/do_it' => 'controller#do_it', :as => 'do_it'
  #get 'detail/:id', to: 'projects#show', as: 'detail'

end


