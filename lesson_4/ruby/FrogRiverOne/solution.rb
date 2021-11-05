# The solution should have the size of the river width and the list of positions
def solution(size_of_river, list_of_positions)
# We create a new array that contain the size + 1 because the list_of_positions
# Start from 1 and not from 0
# And all the elements in this Array have the value of False
river_positions = Array.new(size_of_river + 1, false)
# We create a counter for the distance left for the frog to jump
distance_left = size_of_river
# Iterate the amount of times the list_of_positions has numbers in it
(0..list_of_positions.length - 1).each do |time|
  # Create a container to store the current number inside the list_of_positions
  position = list_of_positions[time]
    # Unless the river_position we are at is already true, then do the followin:
    unless river_positions[position] == true
      # Turn the current position of this array to true
      river_positions[position] = true
      # And decrease the counter of distance_left by one
      distance_left -= 1
        # Check if the counter goes to zero, then return the current number of list_of_positions
        return time if distance_left == 0
    end
    end
    # If distance_left never reaches zero, it will return -1 instead
    - 1
end
