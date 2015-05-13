class ArrayLike < Array

end

a = ArrayLike.new([1,2,3])
p a
p a.class

p a == [1,2,3]
p [1,2,3] == a

reversed_a = a.reverse

p reversed_a.class

