require "set"

a = [1,2,3,4,5,6,7]

p a.group_by { |x| x % 3 }
p a.group_by { |x| x.even? }

p "---------------------"


s = Set.new(["some words", "different words", "some other words"])

p s.group_by { |x| x.split(" ").first }
p s.group_by { |x| x.split(" ").count }

p "-------------------"
