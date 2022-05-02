require "./lib/rover.rb"

describe Rover do
  describe "#turn_left" do
    it "rotates the rover 90 degrees to the left of current direction" do
      rover = Rover.new(0, 0, "N")
      expect(rover.turn_left()).to eql("W")
    end
  end

  describe "#turn_right" do
    it "rotates the rover 90 degrees to the right of current direction" do
      rover = Rover.new(0, 0, "N")
      expect(rover.turn_right()).to eql("E")
    end
  end

  describe "#move" do
    it "increment y coordinate by 1 when rover is facing north" do
      rover = Rover.new(0, 0, "N")
      expect{rover.move()}.to change{rover.coordinate_y}.by(1)
    end

    it "decrement y coordinate by 1 when rover is facing south" do
      rover = Rover.new(0, 0, "S")
      expect{rover.move()}.to change{rover.coordinate_y}.by(-1)
    end

    it "increment y coordinate by 1 when rover is facing east" do
      rover = Rover.new(0, 0, "E")
      expect{rover.move()}.to change{rover.coordinate_x}.by(1)
    end

    it "decrement y coordinate by 1 when rover is facing west" do
      rover = Rover.new(0, 0, "W")
      expect{rover.move()}.to change{rover.coordinate_x}.by(-1)
    end
  end

  describe "#explore" do
    it "gives the instructions to move and rotate the rover along its exploring path" do
      rover = Rover.new(0, 0, "N")
      expect{rover.explore("MMMM")}.to change{rover.coordinate_y}.to(4)
    end

    it "gives the instructions to move and rotate the rover along its exploring path" do
      rover = Rover.new(0, 0, "E")
      expect{rover.explore("MMMM")}.to change{rover.coordinate_x}.to(4)
    end

    it "gives the instructions to move and rotate the rover along its exploring path" do
      rover = Rover.new(0, 0, "N")
      expect{rover.explore("L")}.to change{rover.direction}.to("W")
    end

    it "gives the instructions to move and rotate the rover along its exploring path" do
      rover = Rover.new(0, 0, "N")
      expect{rover.explore("MMMRMMM")}.to change{rover.coordinate_y}.to(3) &&
      change{rover.coordinate_x}.to(3) &&
      change{rover.direction}.to("E")
    end

    it "gives the instructions to move and rotate the rover along its exploring path" do
      rover = Rover.new(0, 0, "N")
      expect{rover.explore("MMMLMMM")}.to change{rover.coordinate_y}.to(3) &&
      change{rover.coordinate_x}.to(-3) &&
      change{rover.direction}.to("W")
    end

    it "gives the instructions to move and rotate the rover along its exploring path" do
      rover = Rover.new(0, 0, "N")
      expect{rover.explore("RRMMMRMMM")}.to change{rover.coordinate_y}.to(-3) &&
      change{rover.coordinate_x}.to(-3) &&
      change{rover.direction}.to("W")
    end

    it "gives the instructions to move and rotate the rover along its exploring path" do
      rover = Rover.new(0, 0, "N")
      expect{rover.explore("LLL")}.to change{rover.direction}.to("E")
    end

    it "gives the instructions to move and rotate the rover along its exploring path" do
      rover = Rover.new(0, 0, "N")
      expect{rover.explore("RRMM")}.to change{rover.direction}.to("S") &&
      change{rover.coordinate_y}.to(-2)
    end
  end
end
