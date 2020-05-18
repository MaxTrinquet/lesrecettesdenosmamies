class RecipesController < ApplicationController
  # il faut que le user soit authentifier pour acceder a ces pages
  before_action :set_user, expect: [:index]

  def index
    @recipes = Recipe.all
  end

  def show
    # cette ligne est fausse
    @recipe = Recipe.find(params[:user_id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    # tu peux utiliser .create ici aussi, avec une subtilite. indice: .merge
    @recipe = Recipe.new(params_recipe)
    @recipe.user = @user
    @recipe.save

    redirect_to user_path(@user)
  end

  private

  def params_recipe
    params.require(:recipe).permit(
      :category,
      :description,
      :ingredient,
      :name,
      :photo
    )
    # en colonne ca permet de mieux se retrouver, encore plus si on met par ordre alphabetique
  end

  # la methode n'est pas forcement utile. Utilise current_user des que tu as besoin du user
  # si tu as besoin de @user dans le front, utilise aussi directement current_user, il me semble que la methode y ait aussi dispo
  def set_user
    @user = current_user
  end

end
