class CommentsController < ApplicationController
  before_action :authenticate_user!, :except => [:new, :create],
                :set_user,
                :find_recipe, :only => [:new, :create]

  def new
    @comment = Comment.new
  end

  def create
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

  def set_user
    @user = current_user
  end

  def find_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end


end
