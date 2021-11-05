require_relative "solution.rb"

# Test cases

GIVEN_ELEMENTS = [
  [2, 3, 1, 5],
  [2, 3, 1, 5, 6, 4],
  [1, 3, 4],
  [3, 1, 2, 6, 5, 7],
  [8, 7, 6, 5, 4, 3, 2],
  [9, 8, 7, 6, 5, 4, 3, 2, 1],
  [1, 2, 3, 4, 9, 8, 7, 6, 5, 10, 11]
]

MISSING_ELEMENTS = [4, 7, 2, 4, 1, 10, 12]

GIVEN_ELEMENTS.each.with_index do |argument, index|
  if solution(argument) == MISSING_ELEMENTS[index]
    puts "."
  else
    puts "Test with #{argument} failed, it should have given #{MISSING_ELEMENTS[index]}"
  end
end
