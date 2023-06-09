class SessionsController < ApplicationController
  
  # def index
  #   if session[:user_id]
  #     @user = User.find_by(id: session[:user_id])
  # end
  # end

  def create
      # cherche s'il existe un utilisateur en base avec l’e-mail
      @user = User.find_by(email: params[:email])

  # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to sessions_path, notice: "connexion réussie !"
    # redirige où tu veux, avec un flash ou pas

      else
        render :new
      end
    end
  
    def show
      @username = User.find(params[:id])
    end

    def destroy
      # Détruit la session de l'utilisateur
      session[:user_id] = nil
      redirect_to root_path, notice: 'Déconnexion réussie!'
  end
end