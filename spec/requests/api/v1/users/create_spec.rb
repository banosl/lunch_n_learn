require 'rails_helper'

RSpec.describe "POST user" do
  describe "creating a user" do
    it "can create a user from a POST request" do
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

    it 'returns with a message if the user already exists' do
      user_1 = User.create({name: "Luca Banos Karki", email: "luca_in_denver@gmail.com", api_key: "b0a7c9416ae4791d53fd"})

      headers = { "CONTENT_TYPE" => "application/json" }
      post "/api/v1/users", headers: headers, params: JSON.generate({name: "Luca Banos Karki", email: "luca_in_denver@gmail.com"})

      expect(response).to_not be_successful
      expect(response.status).to eq(422)

      message = JSON.parse(response.body, symbolize_names: true)
      
      expect(message[:errors]).to eq("This user already exists")
    end

    it 'returns with a message if name is missing' do
      headers = { "CONTENT_TYPE" => "application/json" }
      post "/api/v1/users", headers: headers, params: JSON.generate({email: "luca_in_denver@gmail.com"})

      expect(response).to_not be_successful
      expect(response.status).to eq(400)

      message = JSON.parse(response.body, symbolize_names: true)
      expect(message[:errors]).to eq("Name can't be blank")
    end

    it 'returns with a message if email is missint' do
      headers = { "CONTENT_TYPE" => "application/json" }
      post "/api/v1/users", headers: headers, params: JSON.generate({name: "Luca Banos Karki"})

      expect(response).to_not be_successful
      expect(response.status).to eq(400)

      message = JSON.parse(response.body, symbolize_names: true)
      expect(message[:errors]).to eq("Email can't be blank")
    end
  end
end