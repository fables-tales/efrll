require "set"

collection = [17, 19, 12, 31]

#does not compute the values until they are needed
p collection.each_with_index

p "-----------"

collection.each_with_index do |item_from_collection, index|
  puts ["item", item_from_collection, "index", index].join(" ")
end

p "----------"


collection = Set.new([18,28,38,48,58,68,78, 78])

collection.each_with_index do |item_from_collection, index|
  puts ["item", item_from_collection, "index", index].join(" ")
end

p "-----------"

hash = {
  :a => 1,
  :c => 2,
  :d => 3,
}

hash.each_with_index do |item_from_collection, index|
  puts ["item", item_from_collection, "index", index].join(" ")
end

p "------------"
