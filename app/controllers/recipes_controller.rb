class RecipesController < ApplicationController
  # Ajouter une "fonction pour etre sur que l user est connecte pr acceder a cette page
  # before_action :authenticate_user!
  before_action :set_user, expect: [:index]

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = Ingredient.where(recipe_id: :id)
    @recipe_review_url = "https://lesrecettesdenosmamies.herokuapp.com/#{@user}/#{@recipe.id}"
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params_recipe)
    @recipe.user = @user
    @recipe.save

    redirect_to new_user_recipe_ingredient_path(@user,@recipe)
  end

  private

  def params_recipe
    params.require(:recipe).permit(
      :category,
      :description,
      :minute,
      :person,
      :name,
      :photo,
      :user
    )
  end

  def set_user
    @user = current_user
  end

end
