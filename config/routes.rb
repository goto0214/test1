Rails.application.routes.draw do
  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers, controllers: {
    registrations: "customer/registrations",
    sessions: 'customer/sessions'
  }

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, controllers: {
    sessions: "admin/sessions"
  }


  root to: "homes#top"
  get "about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
