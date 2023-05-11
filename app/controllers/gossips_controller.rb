class GossipsController < ApplicationController

  def create
    @gossip = Gossip.new('user_id' => User.all.sample.id,
                   'title' => params[:title],
                   'content' => params[:content])
    @gossip.user = User.find_by(id: session[:user_id])
      if @gossip.save
        flash[:success] = "Potin bien créé !"
        redirect_to root_path
    else
      render :new
    end
  end

  def index
    @gossips = Gossip.all
    # Méthode qui récupère tous les potins et les assigne à la variable @gossips
  end

  def show
    @show = Show.find(params[:id])
  end
end
 
  #----------------------------------
  # @gossip = Gossip.create(gossip_params)
  # @gossip.user = User.find_by(id: session[:user_id])
  # if @gossip.save
  #   flash[:success] = "Potin bien créé !"
  #   redirect_to root_path
  # else
  #   render :new
  # end
  # ---------------------------
  # private

  # def gossip_params
  #   params.require(:gossip).permit(:title, :content, user_id: User.all.sample.id)
  # end
  