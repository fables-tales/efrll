require "set"

a = [1,2,3]

b = [3,4,5]

p a.zip(b)
p a.lazy.zip(b)

p "---------"

a.zip(b).each do |pair|
  p pair
end

longer = [1,2,3,4,5]

p "----------"
a.zip(longer).each do |pair|
  p pair
end

p "-----------"

longer.zip(a).each do |pair|
  p pair
end

p "-----------"

b = Set.new([1,2,3, 8])

p b.zip(a)

p "-----------"

a_hash = {:a => 1, :b => 2, :c => 3}

p a.zip(a_hash)

a_hash.each do |item|
  p item
end
