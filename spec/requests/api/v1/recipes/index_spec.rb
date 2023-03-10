require 'rails_helper'

RSpec.describe "GET recipes" do
  before :each do
    load_stubs
  end

  it "can return recipes when given a country" do
    country = "Mexico"
    get "/api/v1/recipes?country=#{country}"
    
    expect(response).to be_successful
    expect(response.status).to eq(200)
    
    recipes = JSON.parse(response.body, symbolize_names: true)
    expect(recipes).to be_a(Hash)
    expect(recipes).to have_key(:data)
    expect(recipes[:data]).to be_a(Array)
    
    recipes[:data].each do |recipe|
      expect(recipe).to have_key(:id)
      expect(recipe[:id]).to eq(nil)
      expect(recipe).to have_key(:type)
      expect(recipe[:type]).to eq("recipe")
      expect(recipe).to have_key(:attributes)
      expect(recipe[:attributes]).to have_key(:title)
      expect(recipe[:attributes][:title]).to be_a(String)
      expect(recipe[:attributes]).to have_key(:url)
      expect(recipe[:attributes][:url]).to be_a(String)
      expect(recipe[:attributes]).to have_key(:country)
      expect(recipe[:attributes][:country]).to eq(country)
      expect(recipe[:attributes][:country]).to be_a(String)
      expect(recipe[:attributes]).to have_key(:image)
      expect(recipe[:attributes][:image]).to be_a(String)
      expect(recipe[:attributes]).to_not have_key(:source)
      expect(recipe[:attributes]).to_not have_key(:dietLabels)
      expect(recipe[:attributes]).to_not have_key(:healthLabels)
    end
  end

  xit "can return recipes for a random country when not given a country query" do
    country = ""
    get "/api/v1/recipes?country=#{country}"

    expect(response).to be_successful
    expect(response.status).to eq(200)
    
    recipes = JSON.parse(response.body, symbolize_names: true)

    expect(recipes).to have_key(:data)
    expect(recipes[:data]).to be_a(Array)
    
    recipes[:data].each do |recipe|
      expect(recipe).to have_key(:id)
      expect(recipe[:id]).to eq(nil)
      expect(recipe).to have_key(:type)
      expect(recipe[:type]).to eq("recipe")
      expect(recipe).to have_key(:attributes)
      expect(recipe[:attributes]).to have_key(:title)
      expect(recipe[:attributes][:title]).to be_a(String)
      expect(recipe[:attributes]).to have_key(:url)
      expect(recipe[:attributes][:url]).to be_a(String)
      expect(recipe[:attributes]).to have_key(:country)
      expect(recipe[:attributes][:country]).to be_a(String)
      expect(recipe[:attributes]).to have_key(:image)
      expect(recipe[:attributes][:image]).to be_a(String)
    end
  end

  it "can return an empty data array when there are no results" do
    country = "Tokelau"
    get "/api/v1/recipes?country=#{country}"

    expect(response).to be_successful
    expect(response.status).to eq(200)
    
    recipes = JSON.parse(response.body, symbolize_names: true)

    expect(recipes).to have_key(:data)
    expect(recipes[:data]).to be_a(Array)
    expect(recipes[:data]).to eq([])
  end
end