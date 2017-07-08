Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'personal_websites/education'
  get 'personal_websites/experience'
  match 'personal_websites/about', to: "personal_websites#about", as: "about", via:[:get, :post]
  get 'personal_websites/download_resume', to: "personal_websites#download_resume"

  get 'personal_websites/blog'

  root 'personal_websites#home'
end
