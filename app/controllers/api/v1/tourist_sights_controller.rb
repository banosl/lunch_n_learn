class Api::V1::TouristSightsController < ApplicationController
  def index
    country = params[:country]
    capital_sights = TouristSightsFacade.sights_for_country_capital(country)
  
    render json: CountrySerializer.format_capital_sights(capital_sights)
  end
end