class RecipesController < ApplicationController
  # Ajouter une "fonction pour etre sur que l user est connecte pr acceder a cette page
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
  end

  def set_user
    @user = current_user
  end

end
