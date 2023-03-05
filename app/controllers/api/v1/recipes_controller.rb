class Api::V1::RecipesController < ApplicationController
  def index
    recipes = RecipesFacade.recipes_by_country(params[:country])
    # binding.pry
    render json: RecipeSerializer.format_country_recipes(recipes), status: 200
  end
end