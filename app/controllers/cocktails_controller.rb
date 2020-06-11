class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params_cocktails)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  private

  def params_cocktails
    params.require(:cocktail).permit(:name, :ingredient)
  end

end
