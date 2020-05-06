class RecettesController < ApplicationController

  def index
    @recettes = Recette.all
  end
  def show
    @recettes = Recette.find(params[:id])
    @user = current_user
  end

  def new
    @recette = Recette.new
  end

   def create
    @recette = Recette.new(params_recette)
    @recette.save

    redirect_to user_path(@user)
  end

  private

  def params_recette
    params.require(:recette).permit(:name, :description, :createur, :ingredient)
  end


end
