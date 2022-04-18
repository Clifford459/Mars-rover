class Rover
  attr_accessor :coordinate_x, :coordinate_y, :direction
  COMPASS_1 = ["N", "E", "S", "W", "N"]
  COMPASS_2 = ["N", "W", "S", "E", "N"]

  def initialize(coordinate_x, coordinate_y, direction)
    @coordinate_x   = coordinate_x
    @coordinate_y   = coordinate_y
    @direction      = direction
  end

  def move
    if @direction      == "N"
      @coordinate_y    += 1
    elsif @direction   == "E"
      @coordinate_x    += 1
    elsif @direction   == "S"
      @coordinate_y    -= 1
    elsif @direction   == "W"
      @coordinate_x    -= 1
    end
  end

  def turn_left
    current_direction_index = COMPASS_2.index(@direction)
    @direction              = COMPASS_2[current_direction_index + 1]
  end

  def turn_right
    current_direction_index = COMPASS_1.index(@direction)
    @direction              = COMPASS_1[current_direction_index + 1]
  end

  def explore(instructions)
    instructions.chars.each do |input|
      if input    == "L"
        turn_left
      elsif input == "R"
        turn_right
      elsif input == "M"
        move
      end
    end
  end
end
