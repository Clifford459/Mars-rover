require "./lib/rover.rb"


puts "Welcome to the Mars rover simulator, press enter to start."
gets
puts "Select current location of rover-1 by entering number for x coordinate."
input_coordinate_x = gets.chomp()
coordinate_x       = input_coordinate_x.to_i
puts "Enter number for y coordinate."
input_coordinate_y = gets.chomp()
coordinate_y       = input_coordinate_y.to_i
puts "Enter direction you want the rover-1 to face, select one of the 4 main directions."
input_direction = gets.chomp()
direction       = input_direction.upcase
rover_1         = Rover.new(coordinate_x, coordinate_y, direction)
puts "You selected the following location for rover-1: #{coordinate_x}, #{coordinate_y} facing #{direction}"

puts "Select current location of rover-2 by entering number for x coordinate."
input_coordinate_x = gets.chomp()
coordinate_x       = input_coordinate_x.to_i
puts "Enter number for y coordinate."
input_coordinate_y = gets.chomp()
coordinate_y       = input_coordinate_y.to_i
puts "Enter direction you want the rover-2 to face, select one of the 4 main directions."
input_direction = gets.chomp()
direction       = input_direction.upcase
rover_2         = Rover.new(coordinate_x, coordinate_y, direction)
puts "You selected the following location for rover-2: #{coordinate_x}, #{coordinate_y} facing #{direction}"

puts "Enter instructions, eg. MLMMR to move rover-1 as far as you want to go."
input_instructions = gets.chomp()
instructions       = input_instructions.upcase
rover_1.explore(instructions)
puts "The new location of rover-1 is: #{rover_1.coordinate_x}, #{rover_1.coordinate_y} and is facing #{rover_1.direction}"

puts "Enter instructions, eg. MLMMR to move rover-2 as far as you want to go."
input_instructions = gets.chomp()
instructions       = input_instructions.upcase
rover_2.explore(instructions)
puts "The new location of rover-2 is: #{rover_2.coordinate_x}, #{rover_2.coordinate_y} and is facing #{rover_2.direction}"
