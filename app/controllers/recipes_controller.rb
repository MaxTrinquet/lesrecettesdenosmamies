class RecipesController < ApplicationController
  before_action :set_user, expect: [:show]


  def index
    @first_five_current_user_recipes = current_user.recipes.first(5)
    @family_recipe = current_user.family.recipes
    @results = []

    if params[:query].present?
      sql_query = " \
        recipes.category ILIKE :query \
      "
      @queried_category = params[:query]
      @result_arr = Recipe.where(sql_query, query: "%#{params[:query]}%")
    else
      @result_arr = current_user.family.recipes
    end


  end

  def show
    @user = User.find(params[:user_id])
    @recipe = Recipe.friendly.find(params[:id])
    @ingredients = Ingredient.where(recipe_id: @recipe.id)

    @recipe_review_url = "https://lesrecettesdenosmamies.herokuapp.com/users/#{@user.id}/recipes/#{@recipe.id}"

    @comments_counter = @recipe.comments.count
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
