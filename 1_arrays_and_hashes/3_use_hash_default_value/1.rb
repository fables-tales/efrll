some_words = "Single page web apps don't work on the web"

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

result = Hash.new { |hash, key| hash[key] = [] }

some_words.split(" ").each_with_index do |word, index|
  result[word] << index
end

p "--------"
p result
p "--------"

result = Hash.new

p result[:missing]
result[:missing] = 13
p result[:missing]

p Hash.new == {}
p Hash.new([]) == {}
