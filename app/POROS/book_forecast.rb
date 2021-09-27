class BookForecast

  attr_reader :books,
              :forecast, 
              :total_books,
              :destination,
              :id

  def initialize(books, weather, location)

    @id          = nil
    @destination = location
    @forecast    = {
                    summary: weather.conditions,
                    temperature: weather.temp.to_s + " F"
                  }
    @books       = books
    @total_books = books.count
  end 
end 