class OpenLibraryFacade
  class << self
    def get_books(location, limit)
      data = OpenLibraryService.get_books(location, limit)
      data[:docs].map do |book|
        OpenLibrary.new(book)
      end 
    end 

    def get_book_forecast(location, limit)
      data = WeatherFacade.retrieve_weather(location)
      lat = data[:lat]
      lon = data[:lon]
      weather = WeatherFacade.get_current(lat, lon)
      books = get_books(location, limit)
      BookForecast.new(books, weather, location)
    end
  end 
end 