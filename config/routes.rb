Rails.application.routes.draw do
  root 'charts#index' 
  resources :artists do
    resources :songs
  end
  resources :charts

  get 'new_chart_song/:id', to: 'charts#new_song', as: 'new_chart_song'
	post 'add_chart_song/:id/:song_id', to: 'charts#add_song', as: 'add_chart_song'
  delete 'remove_chart_song/:id/:song_id', to: 'charts#remove_song', as: 'remove_chart_song'
end
