@@a = 0

class Foo
  def self.b
    @@a += 1
  end
  def b
    @@a
  end
end

p Foo.b
p Foo.b
p Foo.b

p Foo.new.b
