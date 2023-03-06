class Api::V1::UsersController < ApplicationController
  def create
    user = User.new({name: params[:name], email: params[:email], api_key: SecureRandom.hex(10)})
    binding.pry
    if user.save
      render json: UserSerializer.user_saved(user), status: 201
    end
  end
end