class UsersController < ApplicationController
   before_action :authenticate_user! , :set_user

  def show
  end

  def edit
  end

  def update
    @user.update(comment_params)
    redirect_to user_path(@user)
  end




  private

  def comment_params
    params.require(:user).permit(
      :name,
      :family,
      :email
      )
  end

  def set_user
    @user = current_user
  end

end
