items = [1,2,3,4,5]

class MapsAndSelects
  def initialize(value)
    @value = value
  end

  def mapped_value
    ((value+1)*20).to_s
  end

  def will_be_selected
    (value+1).even? && mapped_value.length < 3
  end

  protected

  attr_reader :value
end


#debateable?
p items.map { |item| item + 1 }.select {|item| item.even? }.map { |x| x * 20 }.map(&:to_s).select {|x| x.length < 3 }
p items.map { |item| MapsAndSelects.new(item) }.select {|x| x.will_be_selected}.map {|x| x.mapped_value}
