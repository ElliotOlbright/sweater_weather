class Unsplash
  attr_reader :id,
              :description,
              :image_url,
              :location,
              :source,
              :author
              # :logo


  def initialize(data, query)

    @id           = nil 
    @description  = data[:description]
    @image_url    = data[:urls][:raw]
    @location     = query
    @source       = "unsplash.com"
    @author       = data[:user][:username]
    # @logo         = data[:user][:profile_image][:small]
  end
end 