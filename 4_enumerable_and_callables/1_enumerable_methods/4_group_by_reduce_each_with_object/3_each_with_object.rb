a = [1,2,3,4,5,6]

result = a.each_with_object(0) do |item, object|
  object += item
end

p result

p "-------"

class Counter
  def increment(n)
    @count ||= 0
    @count += n
  end

  def count
    @count
  end
end

result = a.each_with_object(Counter.new) do |item, object|
  object.increment(item)
end

p result.count

p "-----------------"

s = ["some", "strings", "some", "more", "strings"]

result = s.each_with_object(Hash.new(0)) do |item, object|
  object[item] += 1
  #no accumulator return unlike reduce
end

p result
