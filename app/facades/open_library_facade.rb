class OpenLibraryFacade
  class << self
    def get_books(location)
      data = OpenLibraryService.get_books(location)
    end 
  end 
end 