class Foo
  def self.process(some_data)
    procedure_1(some_data)
    procedure_2(some_data)
  end

  def self.procedure_1(some_data)
    some_data.pop
  end

  def self.procedure_2(some_data)
    some_data << 18
  end
end

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

p Foo.process([1,2,3])
