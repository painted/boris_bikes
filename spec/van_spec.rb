require 'van'

describe Van do 


	let(:van) {Van.new(:capacity => 10)}
	
	it "should allow setting default capacity on initialising" do
		expect(van.capacity).to eq 10
	end

	it "can pick up a bad bike from the docking station" do
		station = double :station, release_bad_bikes: [:bike1, :bike2]
		expect(station).to receive(:release_bad_bikes)
		van.pickup_bad_bikes_from station
	end

	it 'has two broken bikes after picking up from a station' do
	 	station = double :station, release_bad_bikes: [:bike1, :bike2]
		van.pickup_bad_bikes_from(station)
	 	expect(van.bike_count).to eq 2
	end

end