require "./solution.rb"
require "./solution_2.rb"

# TEST FOR solution

if solution([3, 8, 9, 7, 6], 3) == [9, 7, 6, 3, 8]
    puts "."
elsif
    puts "Error, expected: [9, 7, 6, 3, 8]"
end

if solution([1, 2, 3, 4], 4) == [1, 2, 3, 4]
    puts "."
elsif
    puts "Error, expected: [1, 2, 3, 4]"
end

if solution([7, 8, 3, 9, 5, 7], 4) == [3, 9, 5, 7, 7, 8]
    puts "."
else
    puts "Error, expected: [3, 9, 5, 7, 7, 8]"
end

# TEST FOR solution_2

if solution_2([3, 8, 9, 7, 6], 3) == [9, 7, 6, 3, 8]
    puts "."
elsif
    puts "Error, expected: [9, 7, 6, 3, 8]"
end

if solution_2([1, 2, 3, 4], 4) == [1, 2, 3, 4]
    puts "."
elsif
    puts "Error, expected: [1, 2, 3, 4]"
end

if solution_2([7, 8, 3, 9, 5, 7], 4) == [3, 9, 5, 7, 7, 8]
    puts "."
else
    puts "Error, expected: [3, 9, 5, 7, 7, 8]"
end
