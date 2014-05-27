class Person
	def initialize(bike=nil)
		@bike = bike
	end

	attr_reader :bike

	# def bike
	# 	@bike
	# end

	def has_bike?
		!@bike.nil?
	end

	def fall_down
		@bike.break!
	end

	def rent_bike_from(station)
		@bike = station.release_bike
	end

	def return_bike_to(station)
		bike_to_receive = bike
		station.receive_bike(bike_to_receive)
		@bike = nil
	end


end