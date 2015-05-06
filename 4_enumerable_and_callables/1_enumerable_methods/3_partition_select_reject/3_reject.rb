a = [1,2,3,4,5,6,7,8]

p a.reject { |x| x.even? }
p a.lazy.reject { |x| x.even? }

p "-------------"

a.reject { |x| x.even? }.each do |item|
  p item
end

p "---------------"


s = Set.new((1...18))
s.add(3)
s.add(33)

p s.reject { |x| x % 3 == 0 }

p "---------------"

h = {
  :a => 1,
  :b => 2,
  :c => 3,
}

#RETURNS A HASH
p h.reject { |key, value| value != 2 }

p "------------------"

p a.reject! { |x| x.even? }
p a

a << 18
a << 17

p a

a.reject! { |x| x.even? }

p "----------"
p a.object_id
p a.reject { |x| x.even? }.object_id
