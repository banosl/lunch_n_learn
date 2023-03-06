class Api::V1::RecipesController < ApplicationController
  def index
    country = params[:country]
    if params[:country] == ""
      country = CountriesFacade.random_country_name
    end
    recipes = RecipesFacade.recipes_by_country(country)
        
    unless recipes == nil
      render json: RecipeSerializer.format_country_recipes(recipes), status: 200
    else
      render json: RecipeSerializer.empty, status: 200
    end
  end
end