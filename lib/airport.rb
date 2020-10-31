class Airport

    # attr_reader :landed planes

    def initialize(capacity)
        @capacity = capacity
        @landed_planes = []
    end

    def land(plane)
        fail  'Cannot land plane: Airport full' if @landed_planes.length >= @capacity
        @landed_planes << plane
    end

    def take_off(plane)
    end
end