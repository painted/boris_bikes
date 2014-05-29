require 'docking_station'

describe DockingStation do 


	let(:station) {DockingStation.new(:capacity => 25)}

	it "should allow setting default capacity on initialising" do
		expect(station.capacity).to eq 25
	end

end