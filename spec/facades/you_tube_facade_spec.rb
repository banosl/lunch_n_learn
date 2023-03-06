require 'rails_helper'

RSpec.describe YouTubeFacade do
  before :each do
    load_stubs
  end
  describe "one_video_for_country" do
    it 'returns the first video result for the country given' do
      country = "Mexico"
      video = YouTubeFacade.one_video_for_country(country)

      expect(video).to be_a(Hash)
      expect(video[:id][:videoId]).to eq("ZgrdcffPDDA")
      expect(video[:snippet][:title]).to eq("A Super Quick History of Mexico")
      expect(video[:snippet][:channelTitle]).to eq("Mr History")
    end
  end
end