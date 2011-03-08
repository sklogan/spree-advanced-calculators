# map.namespace :admin do |admin|
#   admin.resources :bucket_rates
# end

Rails.application.routes.draw do
  namespace :admin do
    resources :bucket_rates
  end
end
