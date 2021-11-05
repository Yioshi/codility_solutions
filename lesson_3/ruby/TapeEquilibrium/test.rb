require_relative './solution.rb'

GIVEN_TAPE = [
  [3, 1, 2, 4, 3],
  [4, 7, 2, 8, 3],
  [9, 8, 7, 6, 5, 4, 3, 2, 1],
  [4, 2, 1, 5, 8, 4, 9],
  [9, 8, 6, 7, 1, 1, 2],
  [6, 6, 6, 9, 9, 9, 1, 1, 1],
  [1, 1, 8, 8, 3, 3, 9],
  [4, 1, 2, 2, 4]
]

EQUILIBRIUM = [1, 2, 3, 7, 0, 6, 3, 1]

GIVEN_TAPE.each.with_index do |argument, index|
  if solution(argument) == EQUILIBRIUM[index]
    puts "."
  else
    puts "Test with #{argument} failed, it should have given #{EQUILIBRIUM[index]}"
  end
end
