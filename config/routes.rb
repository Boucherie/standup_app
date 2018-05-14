Rails.application.routes.draw do
  get 'support/contact'

  get 'activity/mine'

  get 'activity/feed'

  root to: 'activity#mine'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
