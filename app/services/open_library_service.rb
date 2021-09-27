class OpenLibraryService < BaseService
  class << self
    def get_books(location, limit)
      response = conn("http://openlibrary.org/search.json").get do |f|
        f.params['q']    = location
        f.params['limit'] = limit
      end 
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end 