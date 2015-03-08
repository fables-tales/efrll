class Bar
  @@a = 1

  def a
    @@a
  end
end

class Foo < Bar
  def a
    @@a = 3
  end
end

p Bar.new.a
p Foo.new.a
