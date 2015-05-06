require "set"

a = [1,2,3,4,5,6,7,8]

matches, does_not_match = a.partition { |x| x.even? }

p matches, does_not_match

p "---------------"

p a.lazy.partition { |x| x.even? }


p "---------------"

s = Set.new(["hello", "Hello World", "world"])

matches, does_not_match = s.partition { |x| x.downcase.include?("world") }

p matches, does_not_match

p "---------------"

h = {
  :a => 1,
  :b => 2,
  :c => 3,
}

matches, does_not_match = h.partition { |key, value| key == :a }

p matches, does_not_match

p Hash[matches]
