class UsersController < ApplicationController
  def show
    @user = current_user
    @recipes = current_user.recipes
    @family_recipe = current_user.family.recipes
  end
end
