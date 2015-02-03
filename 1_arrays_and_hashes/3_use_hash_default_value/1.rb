some_words = "I like turtles? Do you like turtles?"

result = {}
some_words.split(" ").each do |word|
  result[word] ||= 0
  result[word] += 1
end

p result

result = Hash.new(0)

some_words.split(" ").each do |word|
  result[word] += 1
end

p result

result = Hash.new([]) #dangerous, don't do.

some_words.split(" ").each_with_index do |word, index|
  result[word] << index
end

p "--------"
p result == {}
p "--------"

p result

result = Hash.new()

p result[:missing]
result[:missing] = 13
p result[:missing]

p Hash.new() == {}
p Hash.new([]) == {}

