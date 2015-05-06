a = [1,2,3,4]

p a.map(&:to_s)
p a.map { |item| item.to_s }
p a.map(&:even?)
p a.map { |item| item.even? }

p a.partition {|x| x.even? }

p "------------------"

def method_that_takes_a_block(&blk)
  p blk.call("hello")
  p blk.call("World!")
end

p method_that_takes_a_block(&:upcase)

