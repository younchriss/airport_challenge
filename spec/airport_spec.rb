require 'airport'

describe Airport do
    #This is telling you that we no longer need to add 'subject' but we can write 'airport' which will help readability
    subject(:airport) {described_class.new}


    it 'Checks the class responds to the land method' do
        expect(airport).to respond_to(:land).with(1).argument
    end
end