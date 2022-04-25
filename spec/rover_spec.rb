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

  describe "explore" do
    it "gives the instructions to move and rotate the rover along its exploring path" do
      rover = Rover.new(0, 0, "N")
      expect{rover.explore("M""M""M""M""R")}.to change{rover.coordinate_x && rover.coordinate_y && rover.direction}.to(0 && 4 && "E")
    end
  end

  describe "explore" do
    it "gives the instructions to move and rotate the rover along its exploring path" do
      rover = Rover.new(0, 0, "N")
      expect{rover.explore("R""M""M""L""M""L")}.to change{rover.coordinate_x && rover.coordinate_y && rover.direction}.to(2 && 1 && "W")
    end
  end

  describe "explore" do
    it "gives the instructions to move and rotate the rover along its exploring path" do
      rover = Rover.new(0, 0, "N")
      expect{rover.explore("L""L""L")}.to change{rover.direction}.to("E")
    end
  end

  describe "explore" do
    it "gives the instructions to move and rotate the rover along its exploring path" do
      rover = Rover.new(0, 0, "N")
      expect{rover.explore("R""R")}.to change{rover.direction}.to("S")
    end
  end
end
