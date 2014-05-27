class Person
	def initialize(bike=nil)
		@bike = bike
	end

	def has_bike?
		!@bike.nil?
	end

	def fall_down
		@bike.break!
	end

	def rent_bike_from(station)
		@bike = station.release_bike
	end

end