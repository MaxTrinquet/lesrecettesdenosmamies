class FamiliesController < ApplicationController

  def show
    @family = Family.find(params[:id])
  end

  def index
    @families = Family.all
  end

  def new
    @family = Family.new
  end

  def create
    @family = Family.new(params_family)
    @family.save

    redirect_to family_path(@family)
  end

private

  def params_family
    params.require(:family).permit(:name, :photo)
  end

end
