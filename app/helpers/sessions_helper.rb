module SessionsHelper

  def sign_in(user) 
      session[:user_id] = user.id # session é a variavel que o rails disponibiliza para cada seção do usuário. user.id é para setar o usuário logado
  end

  def sing_out 
      session.delete(:user_id) # delete é para remover a chave id do usuário logado 
  end

  def current_user 
      @current_user ||= User.find_by(id: session[:user_id]) # ||=, se a variável @current_user já for setada ele não irá executar a query(scrict sql) no banco
  end

  def user_signed_in? # Verifica se o usuário está logado ou não  
      !current_user.nil? # Aqui não estamos acessando a variável e sim o método acima current_user
  end

end
