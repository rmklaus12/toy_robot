module ToyRobot
  class Robot
    attr_reader :east, :north

    def initialize(east = 0, north = 0, direction = 'north')
      @east = east
      @north = north
      @direction = direction
    end

    def move
      send("move_#{@direction.downcase}")
      # case @direction
      # when "north" then move_north
      # when "south" then move_south
      # when "east" then move_east
      # when "west" then move_west
      # end
    end

    def move_east
      @east += 1
    end

    def move_west
      @east -= 1
    end

    def move_north
      @north += 1
    end

    def move_south
      @north -= 1
    end
  end
end
