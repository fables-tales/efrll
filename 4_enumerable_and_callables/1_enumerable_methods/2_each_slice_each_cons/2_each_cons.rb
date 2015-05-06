a = [1,2,3,4,5,6,7]

p a.each_cons(2)
p a.each_cons(2).to_a

p "----------"

a.each_cons(2) do |item|
  p item
end

p "----------"

s = Set.new([18,23,24,19,0])

s.each_cons(2) do |item|
  p item
end

p "----------"

h = {
  :a => 1,
  :b => 2,
  :c => 3,
}

h.each_cons(3) do |item|
  p item
end
