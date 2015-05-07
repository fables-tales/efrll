require "benchmark/bigo"
require "set"

Benchmark.bigo do |x|
  x.generator {|size|
    array = (0..size).to_a.shuffle
    {
      :array => array,
      :set   => Set.new(array),
    }
  }
  x.steps = 10
  x.step_size = 20
  x.min_size = 1
  x.report("Array#include?") { |data, size| data.fetch(:array).include?(rand(size)) }
  x.report("Set#include?")    { |data, size| data.fetch(:set).include?(rand(size)) }
  x.chart! 'chart_array.html'
end
