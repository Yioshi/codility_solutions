require_relative './solution.rb.'
# Test cases
RIVER_SIZES = [ 5, 9, 7, 12, 4, 5, 7, 4, 5, 4, 0, 3]
LIST_OF_POSITIONS = [
  [1, 3, 1, 4, 2, 3, 5, 4],
  [1, 3, 1, 4, 2, 3, 5, 4, 6, 7, 8, 4, 7, 7, 9],
  [1, 3, 1, 4, 2, 3, 5, 4, 6, 3, 7],
  [4, 3, 2, 1, 3, 2, 1, 3, 4, 5, 9, 8, 7, 6, 10, 11, 10, 12],
  [3, 4, 3, 4, 3, 2, 2, 3, 1],
  [3, 2, 3, 1, 3, 2, 4, 4, 5],
  [5, 5, 4, 1, 2, 2, 3, 4, 6, 5, 7],
  [1, 3, 4],
  [2, 3, 4, 5],
  [4, 3, 2],
  [],
  [1, 1, 2]
]

EXPECTED_RESULTS = [6, 14, 10, 17, 8, 8, 10, -1, -1, -1, -1, -1]

LIST_OF_POSITIONS.each.with_index do |argument, index|
  if solution(RIVER_SIZES[index], argument) == EXPECTED_RESULTS[index]
    puts '.'
  else
    puts "Test with #{argument} failed, it should have given #{EXPECTED_RESULTS[index]}"
  end
end
