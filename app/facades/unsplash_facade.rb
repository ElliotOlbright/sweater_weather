class UnsplashFacade
  class << self
    def get_image(query)
      data = UnsplashService.get_image(query)
      Unsplash.new([data[:results]])
    end 
  end 
end 