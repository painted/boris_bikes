require 'person' 

describe Person do 
	let(:person) {Person.new}
	it 'has no bike' do
		expect(person).not_to have_bike
	end

	it 'can have a bike' do
		person = Person.new(:bike)
		expect(person).to have_bike
	end

	it 'can fall down' do
		bike = double :bike
		expect(bike).to receive(:break!)
		person = Person.new(bike)
		person.fall_down
	end

	it 'can rent a bike from a station' do
		station = double :station
		expect(station).to receive(:release_bike)
		person.rent_bike_from station
	end

	it 'has a bike after renting one from a station' do
		station = double :station, release_bike: :bike
		person.rent_bike_from(station)
		expect(person).to have_bike
	end

	it 'can return a bike to a station' do
		station = double :station
		expect(station).to receive(:receive_bike)
		person.return_bike_to station
	end

		it 'no longer has a bike after returning one to a station' do
		person = Person.new(:bike)
		station = double :station, receive_bike: :bike 
		person.return_bike_to(station)
		expect(person).not_to have_bike
	end
end