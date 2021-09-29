class MapquestFacade 
  class << self 
    def get_coordinates(location)
      json = MapquestService.get_coordinates(location)
      Coordinates.new(json)
    end 

    def travel_time(origin, destination)
			eta = MapquestService.travel_time(origin, destination)
			if eta[:info][:statuscode] == 402
				"Impossible route"
			else
				{
					formatted_time: eta[:route][:formattedTime],
					unix_time: eta[:route][:realTime]
				}
			end
		end
  end
end