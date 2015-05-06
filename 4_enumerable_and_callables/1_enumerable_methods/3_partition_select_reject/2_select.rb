a = [1,2,3,4,5,6,7,8]

p a.select { |x| x.even? }
p a.lazy.select { |x| x.even? }

p "-------------"

a.select { |x| x.even? }.each do |item|
  p item
end

p "---------------"


s = Set.new((1...18))
s.add(3)
s.add(33)

p s.select { |x| x % 3 == 0 }

p "---------------"

h = {
  :a => 1,
  :b => 2,
  :c => 3,
}

#RETURNS A HASH
p h.select { |key, value| value != 2 }

p "------------------"

p a.select! { |x| x.even? }
p a

a << 18
a << 17

p a

a.select! { |x| x.even? }

p "----------"
p a.object_id
p a.select { |x| x.even? }.object_id
