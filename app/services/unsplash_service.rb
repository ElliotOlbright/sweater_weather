
class UnsplashService < BaseService
  def self.get_image(location)
    response = conn('https://api.unsplash.com/search/photos').get do |f|
      f.params['client_id'] = ENV['unsplash_key']
      f.params['query']    = location
      f.params['page']     = 1
      f.params['per_page'] = 1
    end
    JSON.parse(response.body, symbolize_names: true)
  end


end