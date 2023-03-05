require 'rails_helper'

RSpec.describe YouTubeService do
  before :each do
    load_stubs
  end
  describe "get_video_on_country" do
    it ' returns one vide for the query' do
      country = "Mexico"
      videos = YouTubeService.get_video_on_country(country)
     
      expect(videos).to be_a(Hash)
      expect(videos[:items]).to be_a(Array)

      videos[:items].each do |video|
        expect(video).to have_key(:id)
        expect(video[:id]).to have_key(:videoId)
        expect(video[:id][:videoId]).to be_a(String)
        expect(video).to have_key(:snippet)
        expect(video[:snippet]).to have_key(:title)
        expect(video[:snippet][:title]).to be_a(String)
        expect(video[:snippet]).to have_key(:description)
        expect(video[:snippet][:description]).to be_a(String)
        expect(video[:snippet]).to have_key(:channelTitle)
        expect(video[:snippet][:channelTitle]).to be_a(String)
      end
    end
  end
end