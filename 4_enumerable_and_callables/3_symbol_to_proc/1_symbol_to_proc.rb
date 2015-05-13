#a = [1,2,3,4]
#
#p a.map(&:to_s)
#p a.map(&:even?)
#
#p a.partition(&:even?)

















def method_that_takes_a_block(&blk)
  p blk.call("hello")
  p blk.call("World!")
end

p method_that_takes_a_block(&:downcase)


















