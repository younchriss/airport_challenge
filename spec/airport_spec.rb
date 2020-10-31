require 'airport'

describe Airport do
    #This is telling you that we no longer need to add 'subject' but we can write 'airport' which will help readability
    subject(:airport) {described_class.new(20)}
    let(:plane) { Plane.new }


    it 'Checks the class responds to the land method' do
        expect(airport).to respond_to(:land).with(1).argument
    end

    it 'Checks airport responds to take_off' do
        expect(airport).to respond_to(:take_off).with(1).argument
    end

    it 'Raises an error when landing a plane if airport is full' do
        20.times do
            airport.land(plane)
        end
        expect { airport.land(plane) }.to raise_error 'Cannot land plane: Airport full'
    end

end