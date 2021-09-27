class OpenLibraryService < BaseService
  class << self
    def get_books(location, quantity)
      response = conn("http://openlibrary.org/search.json").get do |f|
        f.params['q']     = location
        f.params['limit'] = quantity
      end 
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end 