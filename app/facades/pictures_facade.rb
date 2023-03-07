class PicturesFacade
  def self.pictures_for_country(country)
    response = PictureService.get_pictures_for_country(country)
    response[:results].map do |picture|
      Picture.new(picture)
    end
  end
end