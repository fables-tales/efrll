class Foo
  @@b = 2

  def initialize
    @@b = 0
  end

  def bar
    @@b += 1
    @@b
  end
end

f = Foo.new
f2 = Foo.new

p f.bar

p f2.bar
