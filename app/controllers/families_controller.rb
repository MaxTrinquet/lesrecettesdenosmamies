class FamiliesController < ApplicationController
  # Ajouter une "fonction pour etre sur que l user est connecte pr acceder a cette page
  before_action :authenticate_user!

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
    # utilise.create
    @family = Family.new(params_family)
    @family.save

    redirect_to family_path(@family)
  end

private

  def params_family
    params.require(:family).permit(
      :name,
      :photo
      )
  end

end


