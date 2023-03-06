class Api::V1::UsersController < ApplicationController
  def create
    user = User.new({name: params[:name], email: params[:email], api_key: SecureRandom.hex(10)})
    if user.save
      render json: UserSerializer.user_saved(user), status: 201
    elsif User.find_by(email: params[:email])
      render json: {"errors": "This user already exists"}, status: 422
    # else
    #   render json: {"errors": user.errors.full_messages.to_sentences}, status: 400
    end
  end
end