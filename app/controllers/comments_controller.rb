class CommentsController < ApplicationController
  before_action :authenticate_user!, :except => [:new, :create]

  def new
    @user = current_user
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.new
  end

  def create
    @user = current_user
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.new(comment_params)
    @comment.recipe = @recipe
    @comment.save

    redirect_to user_recipe_path(@user,@recipe)
  end

  private

  def comment_params
    params.require(:comment).permit(
      :name,
      :comment_description,
      :recipe_id
      )
  end

end
