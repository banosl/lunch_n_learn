require 'rails_helper'

RSpec.describe "get favorites from api key" do
  it "returns a json with all the favorites for the user if the api_key is valid" do
    user = User.create({name: "james", email: "james@james.com", api_key: "4b9b6a106ad0a2ced945"})
    favorite_1 = user.favorites.create({country: "Thailand", recipe_link: "https://www.thaifood.com", recipe_title: "Crab Fried Rice"})
    favorite_2 = user.favorites.create({country: "Mexico", recipe_link: "https://www.mexicanfood.com", recipe_title: "Quesadillas de Huitlacoche"})
    headers = { "CONTENT_TYPE" => "application/json" }

    get "/api/v1/favorites?api_key=#{user.api_key}"

    expect(response).to be_successful
    expect(response.status).to eq(200)
    favorites = JSON.parse(response.body, symbolize_names: true)

    expect(favorites[:data][0][:attributes][:recipe_title]).to eq(favorite_1.recipe_title)
    expect(favorites[:data][0][:attributes][:recipe_link]).to eq(favorite_1.recipe_link)
    expect(favorites[:data][0][:attributes][:country]).to eq(favorite_1.country)
    # expect(favorites[:data][0][:attributes][:created_at]).to eq(favorite_1.created_at)

    expect(favorites[:data][1][:attributes][:recipe_title]).to eq(favorite_2.recipe_title)
    expect(favorites[:data][1][:attributes][:recipe_link]).to eq(favorite_2.recipe_link)
    expect(favorites[:data][1][:attributes][:country]).to eq(favorite_2.country)
    # expect(favorites[:data][1][:attributes][:created_at]).to eq(favorite_2.created_at)
  end

  it "returns an error for favorites if the api_key is not valid" do
    get "/api/v1/favorites?api_key=b7690a0dbeb06b2bb125"

    expect(response).to_not be_successful
    expect(response.status).to eq(404)

    result = JSON.parse(response.body, symbolize_names: true)
    expect(result).to eq({errors: "User not found"})
  end
  it "returns an empty hash if the user has no favorites"
end