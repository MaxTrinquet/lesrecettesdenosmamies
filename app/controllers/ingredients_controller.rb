class IngredientsController < ApplicationController
  before_action :set_user, :set_recipe, expect: [:index]

  def index
    @ingredients = Ingredient.all
  end


  def new
    @ingredient = Ingredient.new
    @ingredients = Ingredient.where(recipe_id: @recipe_id)
  end

  def create
    @recipe = Recipe.last
    @ingredient = Ingredient.new(params_ingredient)
    @ingredient.recipe = @recipe
    @ingredient.save

    redirect_to user_recipe_path(@user,@recipe)
  end



  private

  def params_ingredient
    params.require(:ingredient).permit(
      :name,
      :quantity,
      :measure,
    )
  end

  def set_user
    @user = current_user
  end

  def set_recipe
    @recipe = Recipe.last
  end

end
