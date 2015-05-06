class StaticCollection
  include Enumerable

  def each(&blk)
    blk.call(1)
    blk.call(2)
    blk.call(3)
  end
end

StaticCollection.new.each do |item|
  p item
end


p "----------"
p StaticCollection.new.reduce(:+)
p StaticCollection.new.select { |x| x.even? }

p "----------"

class DynamicCollection
  include Enumerable

  def each(&blk)
    while rand < 0.9
      blk.call(rand)
    end
  end
end

p DynamicCollection.new.reduce(:+)

p DynamicCollection.new.select { |x| x < 0.99 }
