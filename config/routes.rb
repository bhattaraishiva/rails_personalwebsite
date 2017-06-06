Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'personal_websites/skill'
  get 'personal_websites/education'
  get 'personal_websites/experience'
  get 'personal_websites/about'
  
  root 'personal_websites#home'
end
