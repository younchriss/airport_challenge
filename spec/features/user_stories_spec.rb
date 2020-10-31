describe 'These are all the user stories' do

    let(:airport) { Airport.new }
    let(:plane) { Plane.new }

    # As an air traffic controller 
    # So I can get passengers to a destination 
    # I want to instruct a plane to land at an airport

    it 'Instructs a plane to land' do
        expect { airport.land(plane) }.not_to raise_error
    end

    # As an air traffic controller 
    # So I can get passengers on the way to their destination 
    # I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport

    it 'Instructs a plane to take off' do
        expect { airport.take_off(plane) }.not_to raise_error
    end

end
