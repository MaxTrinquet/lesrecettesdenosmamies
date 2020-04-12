class FamillesController < ApplicationController

  def show
    @famille = Famille.find(params[:id])
  end

  def index
    @familles = Famille.all
  end

  def new
    @famille = Famille.new
  end

  def create
    @famille = Famille.new(params_famille)
    @famille.save
  end

private

  def params_famille
    params.require(:famille).permit(:name, :photo)
  end

end
