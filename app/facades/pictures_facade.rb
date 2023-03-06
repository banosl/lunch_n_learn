class PicturesFacade
  def self.pictures_for_country(country)
    response = PictureService.get_pictures_for_country(country)
    response[:results].map do |picture|
      {
        alt_tag: picture[:alt_description],
        url: picture[:urls][:full]
      }
    end
  end
end