class Foo
  def initialize(some_data)
    @some_data = some_data
  end

  def process
    procedure_1
    procedure_2
  end

  private

  attr_reader :some_data

  def procedure_1
    some_data.pop
  end

  def procedure_2
    some_data << 18
  end
end

p Foo.new([1,2,3]).process
