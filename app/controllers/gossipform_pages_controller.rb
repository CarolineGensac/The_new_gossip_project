class GossipformPagesController < ApplicationController

  def create
    @gossip = Gossip.new('user_id' => User.all.sample.id,
                   'title' => params[:title],
                   'content' => params[:content])
    if @gossip.save
      redirect_to root_path(success: true)
    else
      render :new
    end
  end

  def index
    @gossips = Gossip.all
    # Méthode qui récupère tous les potins et les assigne à la variable @gossips
  end
end
  # def create
  #   @gossip = Gossip.create(gossip_params) # avec xxx qui sont les données obtenues à partir du formulaire
    
  #   if @gossip.save # essaie de sauvegarder en base @gossip
  #     redirect_to root_path # si ça marche, il redirige vers la page d'index du site
  #   else
  #     render 'form' # sinon, il render la view new (qui est celle sur laquelle on est déjà)
  #   end
  # end

  
  # private

  # def gossip_params
  #   params.require(:gossip).permit(:title, :content, user_id: User.all.sample.id)
  # end
  # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)

  # def show
  #    @gossip = Gossip.find(params[:id])
  # end
