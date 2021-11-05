require_relative "./solution.rb"
require_relative "./solution2.rb"

# Test cases

FIRST_ARGUMENTS = [
  [3, 8, 9, 7, 6],
  [1, 2, 3, 4],
  [7, 8, 3, 9, 5, 7],
  [2, 1, 2, 1],
  [1, 2, 3, 1, 2, 3],
  [1, 2, 3, 4, 1, 2, 3, 4],
  [3, 2, 1, 3, 2, 1],
  [1, 2, 1, 2, 1, 2]
]

ROTATION_CASES = [
  3, 4, 4, 2, 3, 4, 3, 2,
]

RESULT_CASES = [
  [9, 7, 6, 3, 8],
  [1, 2, 3, 4],
  [3, 9, 5, 7, 7, 8],
  [2, 1, 2, 1],
  [1, 2, 3, 1, 2, 3],
  [1, 2, 3, 4, 1, 2, 3, 4],
  [3, 2, 1, 3, 2, 1],
  [1, 2, 1, 2, 1, 2]
]

FIRST_ARGUMENTS.each.with_index do |argument, index|
  if solution(argument, ROTATION_CASES[index]) == RESULT_CASES[index]
    puts "."
  else
    puts "Test with #{argument} failed, it should have given #{RESULT_CASES[index]}"
  end
end

FIRST_ARGUMENTS.each.with_index do |argument, index|
  if solution_2(argument, ROTATION_CASES[index]) == RESULT_CASES[index]
    puts "."
  else
    puts "Test with #{argument} failed, it should have given #{RESULT_CASES[index]}"
  end
end
