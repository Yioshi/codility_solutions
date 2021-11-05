# Solution

def solution(n)
binary = n.to_s(2)

binary_characters = binary.chars

max_counter = 0
counter = 0

  binary_characters.each do |char|
    if char == "0"
      counter += 1
    else
      max_counter = counter if counter > max_counter
      counter = 0
    end
  end
  max_counter
end
