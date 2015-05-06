require "set"

a = [1,2,3,4,5,6]

p a.find { |x| x.even? }

p "-------------------------"

p a.lazy.find { |x| x.even? }

p "--------------"

s = Set.new([1,2,3,4])

p s.find { |x| x.even? }

h = {
  :a => 1,
  :b => 2,
  :c => 3,
}

p "--------"
p h.find { |key, value| key == :a }
p h.find { |key, value| value == 3 }
