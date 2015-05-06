require "set"

a = [1,2,3,4,5,6,7,8]

p a.each_slice(2).to_a

p "----------"

a.each_slice(2).each do |item|
  p item
end

p "-----------"

s = Set.new((1...18))

s.add(3)
s.add(3)

s.each_slice(3) do |item|
  p item
end

p "----------"

h = {
  :a => 1,
  :b => 2,
  :c => 3,
}

h.each_slice(2) do |slice|
  p slice
end
