# == Route Map
#
#        Prefix Verb URI Pattern              Controller#Action
# pages_convert GET  /pages/convert(.:format) pages#convert
#          root GET  /                        pages#home
#

Rails.application.routes.draw do
  get 'pages/convert'
  get 'pages/missing_value'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
