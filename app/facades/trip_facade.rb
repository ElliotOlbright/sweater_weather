class TripFacade
	class << self

		def create_road_trip(origin, destination)
			travel_time = MapquestFacade.travel_time(origin, destination)
			weather_at_eta = WeatherFacade.weather_at_eta(destination, travel_time) unless travel_time == "Impossible route"
			require "pry"; binding.pry
			Trip.new(origin, destination, travel_time, weather_at_eta)
		end

	end
end