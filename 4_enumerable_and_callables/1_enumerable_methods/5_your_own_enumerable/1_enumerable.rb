#class StaticCollection
#  include Enumerable
#
#  def each(&blk)
#    blk.call(1)
#    blk.call(2)
#    blk.call(3)
#  end
#end
#
#StaticCollection.new.each do |item|
#  p item
#end
#
#
#p "----------"
#p StaticCollection.new.select {|x| x.even? }
#p StaticCollection.new.reduce(:+)
#p "----------"

class DynamicCollection
  include Enumerable

  def each(&blk)
    10.times do
      blk.call(rand)
      #could be file io, network, etc
      sleep(rand*0.1)
    end
  end
end

p DynamicCollection.new.reduce(:+)

p DynamicCollection.new.select { |x| x < 0.99 }
