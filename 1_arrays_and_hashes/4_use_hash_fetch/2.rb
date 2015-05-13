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

a = [1,2,3,4,5]

p a[2]

p a.fetch(100, 9)
