class UnsplashFacade
  class << self
    def get_image(location)
      data = UnsplashService.get_image(location)
      Unsplash.new([data[:results].first], location)
    end 
  end 
end 