class Unsplash
  attr_reader :id,
              :image
              # :description,
              # :image_url,
              # :location,
              # :source,
              # :author


  def initialize(data, location)
    @id           = nil      
    @image        = { 
                      location: location,
                      image_url: data[0][:urls][:raw],
                      credit: { 
                        source: "unsplash.com",
                        author: data[0][:user][:username]
                       }
       }  
  end
end 