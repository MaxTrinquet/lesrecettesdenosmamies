class UsersController < ApplicationController
  def show
    @user = current_user
    @recettes = current_user.recettes
    @famille_recette = current_user.famille.recettes
  end

end
