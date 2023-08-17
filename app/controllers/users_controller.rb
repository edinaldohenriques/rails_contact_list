class UsersController < ApplicationController
    # Action para as rotas de Cadastro
    def new  # Para renderizar o formulário de cadastro 
        @user = User.new # Criando um novo usuário a partir do formulário  
    end
    
    def create # Receber o Post para efetuar a criação da rota
    end
end
