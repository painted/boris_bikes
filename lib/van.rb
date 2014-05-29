# load BikeContainer
require_relative 'bike_container'
require 'debugger'
class Van

	# this gives us all the mthods that used to be in this 
	# class and have moved to BikeContainer
	include BikeContainer

	def initialize(options = {})
		#self.capacity is calling the capacity=() method 
		# (note the equals sign) defined in BikeContainer
		# capacity (the second argument to fetch()) is calling
		# 	the capacity() method in BikeContianer
		self.capacity = options.fetch(:capacity, capacity)
	end

	def pickup_bad_bikes_from(station)
		# broken_bikes = station.release_bad_bikes
		# bikes.concat broken_bikes
		bikes.concat(station.release_bad_bikes)
	end
end
