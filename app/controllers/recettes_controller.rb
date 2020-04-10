class RecettesController < ApplicationController

  def index
    @recettes = Recette.all
  end
  def show
    @recette = Recette.find(params[:id])
  end

end
