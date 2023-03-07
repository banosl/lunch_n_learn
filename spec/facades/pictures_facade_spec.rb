require 'rails_helper'

RSpec.describe PicturesFacade do
  before :each do
    load_stubs
  end
  describe "#_pictures_for_country" do
    it "returns 10 pictures for the country" do
      country = "Mexico"
      pictures = PicturesFacade.pictures_for_country(country)

      expect(pictures).to be_a(Array)

      pictures.each do |picture|
        expect(picture.alt_tag).to be_a(String)
        expect(picture.url).to be_a(String)
      end

      expect(pictures[0].alt_tag).to eq("people standing on corner road near concrete buildings during daytime")
    end
  end
end