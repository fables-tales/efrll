a = [1,2,3,4,5]

ret = a.each do |item|
  p item
  #we do not use or care about the return value of this block
end

p ret

p a.map { |item| item + 1 }

p a.select { |item| item + 2 }

result = a.each_with_object(Hash.new(0)) do |item, object|
  object[item] += 1
  #do not care about the return value of the block
end

p result

result = a.reduce(Hash.new(0)) { |accum, item|
  accum[item] += 1
  accum
  #we very much care about the return value
}

