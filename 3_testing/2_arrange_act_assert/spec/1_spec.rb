require "spec_helper"

class Foo
  def initialize
    @items = []
  end

  def <<(item)
    items << item
  end

  def item_count
    items.count
  end

  protected

  attr_reader :items
end

describe "arrange_act_assert" do
  describe "two instances" do
    it "does not affect the other instance when shovelling" do
      foo1 = Foo.new
      foo2 = Foo.new

      foo1 << :hi
      foo2 << :hi

      expect(foo1.item_count).to eq(1)
    end
  end
end
