require_relative "solution.rb"

# Test cases

STARTING_POSITION = [10, 10, 1, 15, 2, 5, 2, 10]

FINISH_LINE = [85, 100, 5, 99, 77, 66, 200, 850]

DISTANCE_JUMPED = [30, 10, 2, 7, 22, 3, 20, 30]

RESULT_EXPECTED = [3, 9, 2, 12, 4, 21, 10, 28]

STARTING_POSITION.each.with_index do |argument, index|
  if solution(argument, FINISH_LINE[index], DISTANCE_JUMPED[index]) == RESULT_EXPECTED[index]
    puts "."
  else
    puts "Test with #{argument} failed, it should have given #{RESULT_EXPECTED[index]}"
  end
end
