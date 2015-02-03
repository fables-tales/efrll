require "fetchable"

class IsLikeAHash
  include Fetchable
  def [](key)
    {
      1 => :foo,
      2 => :bees,
    }[key]
  end
end

p IsLikeAHash.new.fetch(1)

a = [1,2,3,4,5]
p a[1]
p a[18]

a.extend(Fetchable)

p a.fetch(18)
a << nil
p a[5]
p a.fetch(5)
