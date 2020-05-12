class RecipesController < ApplicationController
  before_action :set_user, expect: [:index]


  def index
    @recipes = Recipe.all
  end

  def show
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
    params.require(:recipe).permit(:name, :description, :ingredient, :category, :photo)
  end

  def set_user
    @user = current_user
  end

end
