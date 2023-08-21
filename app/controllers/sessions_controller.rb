class SessionsController < ApplicationController
  def new # Método para renderização do layout
    redirect_to user_path(current_user) if user_signed_in?
  end

  def create # Validação e redirecionamento do usuário
    user = User.find_by(email: params[:session] [:email].downcase)
    if user && user.authenticate(params[:session][:password]) # Verifica a validação do usuário
      sign_in(user) # O método sign_in irá receber o usuário atenticado
      redirect_to contacts_path # Irá redirecionar apenas o usuário atenticado
    else
      flash.now[:danger] = 'Email ou senha inválidos!' # O método flash.now[:success ou :danger] irá exibir a mensagem para o usuário apenas a página atual, após o redirecionamento, a mensagem será desaparecerá
      render 'new'
    end
  end

  def destroy # Logout do usuário
    sing_out # Método definido no sessions_helper
    flash[:success] = 'Logout realizado com sucesso!' # O método flash[:success ou :danger] irá exibir a mensagem para o usuário na página atual e na página que o mesmo foi redirecionado.
    redirect_to entrar_path
  end
end
