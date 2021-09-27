class OpenLibraryFacade
  class << self
    def get_books(location, limit)
      data = OpenLibraryService.get_books(location, limit)
      data[:docs].map do |book|
        OpenLibrary.new(book)
      end 
    end 
  end 
end 