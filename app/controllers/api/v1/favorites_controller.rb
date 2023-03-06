class Api::V1::FavoritesController < ApplicationController
  def create
    if User.find_by(api_key: params[:api_key])
      user = User.find_by(api_key: params[:api_key])
      new_favorite = user.favorites.new(favorite_params)

      if new_favorite.save
        render json: {"success": "Favorite added successfully"}, status: 200
      end
    else
      render json: {"errors": "User not found"}, status: 404
    end
  end

  private
  def favorite_params
    params.permit(:country, :recipe_link, :recipe_title)
  end
end