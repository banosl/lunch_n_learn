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
        expect(picture).to have_key(:alt_tag)
        expect(picture).to have_key(:url)
        expect(picture).to_not have_key(:description)
        expect(picture).to_not have_key(:width)
        expect(picture).to_not have_key(:height)
        expect(picture).to_not have_key(:color)
        expect(picture).to_not have_key(:links)
      end
    end
  end
end