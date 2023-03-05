require 'rails_helper'

RSpec.describe 'GET learning resources' do
  it "can return a video and 10 images for the given country in the response" do
    country = "Mexico"
    get "/api/v1/learning_resources?country=#{country}"

    expect(response).to be_successful
    expect(response.status).to eq(200)
  end
end