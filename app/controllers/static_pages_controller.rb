class StaticPagesController < ApplicationController
  def home
    @gossips = Gossip.all
  end


  def index

    #Gossip.all
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
  end

  def show
    # @show = show
    # params [:gossipform]
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
  end
  # def show
  #   puts "$" * 60
  #   puts "Voici le message de l'URL :"
  #   puts  params[:user_entry]
  #   puts "$" * 60
  # end
end
