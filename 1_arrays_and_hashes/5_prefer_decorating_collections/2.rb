class ArrayLike
  def initialize(somearray)
    @somearray = somearray.to_a.dup
  end

  def reverse
    self.class.new(somearray.reverse)
  end

  def inspect
    "#<ArrayLike:#{somearray.inspect}>"
  end

  def to_a
    somearray.dup
  end

  private

  attr_reader :somearray
end

a = ArrayLike.new([1,2,3])

p a

a_reverse = a.reverse

p a.reverse

a = ArrayLike.new(a_reverse).reverse

p a
