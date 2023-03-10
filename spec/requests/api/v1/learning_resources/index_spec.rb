require 'rails_helper'

RSpec.describe 'GET learning resources' do
  before :each do
    load_stubs
  end
  it "can return a video and 10 images for the given country in the response" do
    country = "Mexico"
    get "/api/v1/learning_resources?country=#{country}"

    expect(response).to be_successful
    expect(response.status).to eq(200)

    result = JSON.parse(response.body, symbolize_names: true)

    expect(result[:data]).to have_key(:type)
    expect(result[:data]).to have_key(:attributes)
    expect(result[:data][:attributes]).to have_key(:country)
    expect(result[:data][:attributes][:country]).to eq(country)
    expect(result[:data][:attributes]).to have_key(:video)
    expect(result[:data][:attributes][:video]).to have_key(:title)
    expect(result[:data][:attributes][:video][:title]).to eq("A Super Quick History of Mexico")
    expect(result[:data][:attributes][:video]).to have_key(:youtube_video_id)
    expect(result[:data][:attributes]).to have_key(:images)
    expect(result[:data][:attributes][:images]).to be_a(Array)

    result[:data][:attributes][:images].each do |image|
      expect(image).to have_key(:url)
      expect(image).to have_key(:alt_tag)
      expect(image).to_not have_key(:user)
      expect(image).to_not have_key(:location)
      expect(image).to_not have_key(:twitter_username)
    end
  end

  it 'returns an empty response for when there are no video results' do
    country = "Narnia"
    get "/api/v1/learning_resources?country=#{country}"

    expect(response).to be_successful
    expect(response.status).to eq(200)

    result = JSON.parse(response.body, symbolize_names: true)

    expect(result[:data]).to have_key(:type)
    expect(result[:data]).to have_key(:attributes)
    expect(result[:data][:attributes]).to have_key(:video)
    expect(result[:data][:attributes][:video]).to eq({})
  end

  it 'returns an empty response for when there are no image or video results' do
    country = "Durotar"
    get "/api/v1/learning_resources?country=#{country}"

    expect(response).to be_successful
    expect(response.status).to eq(200)

    result = JSON.parse(response.body, symbolize_names: true)

    expect(result[:data]).to have_key(:type)
    expect(result[:data]).to have_key(:attributes)
    expect(result[:data][:attributes]).to have_key(:video)
    expect(result[:data][:attributes][:video]).to eq({})
    expect(result[:data][:attributes][:images]).to eq([])
  end
end