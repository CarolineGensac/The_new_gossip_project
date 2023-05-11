class UsersController < ApplicationController
  def new
    @user = User.new
  end

  # def show
  #   @user = User.find(params[:id])
  # end

  def create
    
    @user = User.new('first_name' => params[:first_name],
      'email' => params[:email],
      'password' => params[:password])
        if @user.save
          session[:user_id] = @user.id
          redirect_to root_path, notice: "Compte créé avec succès"
        else

          render :new
        end
  end

  
end
