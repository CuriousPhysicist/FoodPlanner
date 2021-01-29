class IngredientController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.where(id: params[:id]).includes(:macro_nutrients).first
  end
end
