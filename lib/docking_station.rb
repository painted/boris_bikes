# load BikeContainer
require_relative 'bike_container'

class DockingStation

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

end
