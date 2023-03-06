require 'rails_helper'

RSpec.describe "POST user" do
  describe "creating a user" do
    it "can create a user from a POST request" do
      user_body = {name: "Luca Banos Karki", email: "luca_in_denver@gmail.com"}
      headers = { "CONTENT_TYPE" => "application/json" }
      
      post "/api/v1/users", headers: headers, params: JSON.generate({name: "Luca Banos Karki", email: "luca_in_denver@gmail.com"})

      expect(response).to be_successful
      expect(response.status).to eq(201)

      user = JSON.parse(response.body, symbolize_names: true)

      expect(user).to have_key(:data)
      expect(user[:data]).to have_key(:attributes)
      expect(user[:data][:attributes]).to have_key(:name)
      expect(user[:data][:attributes][:name]).to be_a(String)
      expect(user[:data][:attributes]).to have_key(:email)
      expect(user[:data][:attributes][:email]).to be_a(String)
      expect(user[:data][:attributes]).to have_key(:api_key)
      expect(user[:data][:attributes][:api_key]).to be_a(String)
    end
  end
end