describe 'These are all the user stories' do

    let(:airport) { Airport.new(20) }
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

    # As an air traffic controller 
    # To ensure safety 
    # I want to prevent landing when the airport is full 

    it 'Prevents a plane landing when airport is full' do
        #add a capcity to the airport. This will be in our 'initializer' method
        airport
        #Land plane to the airport's capacity so that we pass the test.
        20.times do
            airport.land(plane)
        end
        #Land a 21st plane to pass test
        expect { airport.land(plane) }.to raise_error 'Cannot land plane: Airport full'
    end

end

