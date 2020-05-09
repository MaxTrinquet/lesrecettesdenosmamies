class RecettesController < ApplicationController
  before_action :set_user, expect: [:index]


  def index
    @recettes = Recette.all
  end
  def show
    @recettes = Recette.find(params[:id])
  end

  def new
    @recette = Recette.new
  end

  def create
    @recette = Recette.new(params_recette)
    @recette.user = @user
    @recette.save
    redirect_to user_path(@user)
  end

  private

  def params_recette
    params.require(:recette).permit(:name, :description, :createur, :ingredient)
  end

  def set_user
    @user = current_user
  end

end
