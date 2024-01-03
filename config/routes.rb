Chinook::Application.routes.draw do
  resources :tracks

  resources :playlists_tracks

  resources :playlists

  resources :media_types

  resources :invoice_lines

  resources :invoices

  resources :genres

  resources :employees

  resources :customers

  resources :artists

  resources :albums
end
