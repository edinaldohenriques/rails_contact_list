Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Nesse arquivo (routes.rb) é onde ficará as rotas da aplicação

  # Página principal da aplicação - root to: "nome_do_controller(o controller que foi criado)#index(nome da action(página inicial))"
  root to: "static_pages#index"
end
