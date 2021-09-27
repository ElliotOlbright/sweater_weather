class OpenLibraryService < BaseService
  class << self
    def get_books(location)
      response = conn("http://openlibrary.org/search.json").get do |f|
        f.params['q'] = location
      end 
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end 