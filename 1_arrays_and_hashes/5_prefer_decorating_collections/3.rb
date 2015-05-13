require "delegate"

class ArrayLike < SimpleDelegator
  def contains_only_even_numbers?
    all? {|x| x % 2 == 0 }
  end
end

a = ArrayLike.new([2])

p a

a.each do |item|
  p item
end

p a.reverse.class

p a.contains_only_even_numbers?
