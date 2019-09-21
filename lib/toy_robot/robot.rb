module ToyRobot
  class Robot
    DIRECTIONS = ['north', 'east', 'south', 'west']
    attr_reader :east, :north, :direction

    def initialize(east = 0, north = 0, direction = 'north')
      @east = east
      @north = north
      @direction = direction
    end

    def report
      {
          north: north,
          east: east,
          direction: direction
      }
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

    def turn_left
      turn(:left)
      # @direction = DIRECTIONS[DIRECTIONS.index(@direction) -1]
      # @direction = case @direction
      #              when 'north' then 'west'
      #              when 'south' then 'east'
      #              when 'east' then 'north'
      #              when 'west' then 'south'
      #              end
    end

    def turn_right
      turn(:right)
      # index = DIRECTIONS.index(@direction)
      # @direction = DIRECTIONS.rotate(1)[index]
    end

    private

    def turn(turn_direction)
      index = DIRECTIONS.index(@direction)
      rotations = turn_direction == :right ? 1: -1
      @direction= DIRECTIONS.rotate(rotations)[index]
    end
  end
end
