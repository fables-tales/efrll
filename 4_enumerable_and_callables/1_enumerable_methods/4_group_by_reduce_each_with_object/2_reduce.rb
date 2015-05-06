require "set"

a = [1,2,3,4,5,6]

p a.reduce(:+)
p a.reduce(3, :+)

p a.reduce(3, &:+)

p "-----------------"

a = ["some", "strings", "some", "more", "strings"]

p a.reduce(Hash.new(0)) { |accumulator, value|
  accumulator[value] += 1
  accumulator
}

p "-------------"

p a.each_with_index.reduce(Hash.new { |h,k| h[k] = [] }) { |accumulator, value_and_index|
  value,index = value_and_index
  accumulator[value] << index
  accumulator
}

p "--------------"

a = [1,2,3,4,5,6]

p a.reduce([]) { |accumulator, value|
  if value.even?
    accumulator << value
  end

  accumulator
}
