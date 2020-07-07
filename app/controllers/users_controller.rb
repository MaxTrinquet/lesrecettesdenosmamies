class UsersController < ApplicationController
   before_action :authenticate_user!

  def show
    @user = current_user
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
end
