class UsersController < ApplicationController

    before_action :require_logged_in_user, only: [:edit, :update] # Restringindo as funções edit e update, apenas aos usuários logados

    # Action para as rotas de Cadastro
    def new  # Para renderizar o formulário de cadastro 
        @user = User.new # Criando um novo usuário a partir do formulário  
    end
    
    def create # Receber o Post para efetuar a criação da rota
        @user = User.new(user_params)
        if @user.save # Método da classe User, que gera um script SQL que irá salvar no os dados no banco de daos
            flash[:success] = 'Usuário cadastrado com sucesso' # flash[:success] é uma função do rails que permite enviar mensagem para o usuário
            redirect_to root_url # Para redirecionar para a página index 
        else 
            render 'new'
        end
    end 

    def edit 
    end

    def update
        if current_user.update(user_params)
            flash[:success] = 'Dados atualizados'
            redirect_to contacts_url
        else
            render 'edit'
        end
    end

    private 
        def user_params # Esse é o método que a classe User está recebendo acima, ela irá filtrar os parâmetros
            params.require(:user).permit(:email, :name, :password, :password_confirmation) # Aqui está sendo feita a filtragem, para garantir que apenas esses 4 parâmetros sejam inseridos no usuário(:user)
        end

end
